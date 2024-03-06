require 'rails_helper'

RSpec.describe User, type: :model do
  it "should vaild with valid attribute" do
    user = User.new(name: "Jaydeep", email: "jay.solanki@gmail.com", address: "Indore(M.P)")
    expect(user).to be_valid
  end
end
