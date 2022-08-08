# frozen_string_literal: true

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'task regex should save' do
    test_task = Task.new
    assert test_task.valid?
  end

  test 'task regex numeric name' do
    test_task = Task.new(name: '4 5 6 7',
                         description: 'Some description of task', deadline: Time.now, task_list_id: 1)
    assert_not test_task.valid?
  end

  test 'task regex non alphanumeric character' do
    test_task = Task.new(name: 'Clean up **',
                         description: 'Some description of task', deadline: Time.now, task_list_id: 1)
    assert_not test_task.valid?
  end
end
