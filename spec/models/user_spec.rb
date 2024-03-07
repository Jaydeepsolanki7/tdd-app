require 'rails_helper'

RSpec.describe User, type: :model do
  it "should vaild with valid attribute" do
    user = User.new(name: "Jaydeep", email: "jay.solanki@gmail.com", address: "Indore(M.P)")
    expect(user).to be_valid
  end

  it "should not vaild without name" do
    user = User.new(email: "jay.solanki@gmail.com", address: "Indore(M.P)")
    expect(user).not_to be_valid
  end

  it "should not valid without an email" do
    user = User.new(name: "Jaydeep")
    expect(user).not_to be_valid
  end

  it "should have unique email address" do
    User.create(name:"Jaydeep", email: "jay.solanki@gmailcom")
    user = User.new(name:"Jay", email: "jay.solanki@gmailcom")
    expect(user).not_to be_valid
  end
end
