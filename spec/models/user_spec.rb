require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  it "should respond to 'name'" do
    expect(@user).to respond_to(:name)
  end

  it "should respond to 'email'" do
  expect(@user).to respond_to(:email)
end

end