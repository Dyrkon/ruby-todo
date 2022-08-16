# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    log_in_as
    get tasks_path
    assert_response :success
  end

  test 'should get edit' do
    log_in_as
    get edit_task_path(tasks(:one))
    assert_response :success
  end

  test 'should get delete' do
    log_in_as
    delete task_path(tasks(:one))
    assert_response :success
  end
end
