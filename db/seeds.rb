# frozen_string_literal: true

TaskList.create(name: "Cleaning")
TaskList.create(name: "Dishes")

Task.create(:name => "Clean up 1", :description => "Clean up the half of the rooms", :deadline => Date.today-50, :task_list_id => 1)
Task.create(:name => "Clean up 2", :description => "Clean up the other half of the rooms", :deadline => Date.today+40, :task_list_id => 1)
Task.create(:name => "Do the dishes", :description => "Do the dishes", :deadline => Date.today-10, :task_list_id => 2)
Task.create(:name => "Put the dishes back", :description => "Put the dishes back where they belong", :deadline => Date.today+30, :task_list_id => 2)
