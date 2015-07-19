require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with a username, email and a password" do
    user = User.new(
      username: 'Ava',
      email: 'ava@example.com',
      password: 'helloworld')
    expect(user).to be_valid
  end  

  it "is invalid without a username" do
    user = User.new(
      username: nil)
    user.valid?
    expect(user.errors[:username]).not_to include("can't be blank")
  end  

  it "is invalid without an email" do
    user = User.new(
      email: nil)
    user.valid?
    expect(user.errors[:email]).not_to include("can't be blank")
  end  

  it "is invalid without a password" do
    user = User.new(
      password: nil)
    user.valid?
    expect(user.errors[:password]).not_to include("can't be blank")
  end  

  it "is invalid with a duplicate email address" do
    User.create(
      username: 'Anne',
      email: 'tester@example.com',
      password: 'helloworld')

    user = User.new(
      username: 'Ava',
      email: 'tester@example.com',
      password: 'helloworld')
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end    
end
