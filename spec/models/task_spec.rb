require 'rails_helper'

RSpec.describe Task, type: :model do
  it "should vaild with valid attribute" do
    task = Task.new(name:"sample task", description: "just a sample task", completed: false)
  end
end