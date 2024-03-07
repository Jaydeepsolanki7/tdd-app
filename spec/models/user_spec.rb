require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it "should be valid with valid attributes" do
    expect(user).to be_valid
  end

  it "should not be valid without name" do
    user.name = nil
    expect(user).not_to be_valid
  end

  it "should not be valid without an email" do
    user.email = nil
    expect(user).not_to be_valid
  end

  it "should have a unique email address" do
    existing_user = create(:user, email: "jay.solanki@gmail.com")
    user.email = existing_user.email
    expect(user).not_to be_valid
  end
end
