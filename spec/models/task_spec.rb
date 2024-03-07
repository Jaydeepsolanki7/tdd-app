require 'rails_helper'

RSpec.describe Task, type: :model do

  before(:each) do
    @user = FactoryBot.create(:user)
  end

  it "should vaild with valid attribute" do
    task = Task.new(name:"sample task", user_id: @user.id, description: "just a sample task", completed: false)
    expect(task).to be_valid
  end

  it "should not valid without userId" do
    task = Task.new(name:"sample task", description: "just a sample task", completed: false)
    expect(task).not_to be_valid
  end

  it "should not vaild without name" do
    task = Task.new(user_id: @user.id, description: "just a sample task", completed: false)
    expect(task).not_to be_valid
  end
end
