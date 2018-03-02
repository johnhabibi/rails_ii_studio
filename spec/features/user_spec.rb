describe "authenticate" do
  before do
    @user = User.create!(user_attributes)
  end

  it "returns non-true value if the email does not match" do
    expect(User.authenticate("nomatch", @user.password)).not_to eq(true)
  end

  it "returns non-true value if the password does not match" do
    expect(User.authenticate(@user.email, "nomatch")).not_to eq(true)
  end

  it "returns the user if the email and password match" do
    expect(User.authenticate(@user.email, @user.password)).to eq(@user)
  end
end
