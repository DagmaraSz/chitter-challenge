require "spec_helper"

describe User do

  subject(:user) {described_class.new}

  it "has a name" do
    expect(user).to respond_to(:username)
  end

  it "has an email" do
    expect(user).to respond_to(:email)
  end

  it "has an encrypted password" do
    expect(user).to respond_to(:password_digest)
  end

  it "has a name" do
    expect(user).to respond_to(:name)
  end

  it "has many peeps" do
    expect(user).to respond_to(:peeps)
  end

  it "has a username that is unique" do
    expect(User.count(username: peep.username)).to eq 1
  end

  it "has an email that is unique" do
    expect(User.count(email: peep.email)).to eq 1
  end

  it "can post peeps" do
    expect(user).to respond_to(:post)
  end
end
