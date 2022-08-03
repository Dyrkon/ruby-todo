# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get tasks_path
    assert_response :success
  end

  test 'should get show' do
    get task_path(tasks(:one))
    assert_response :success
  end

  test 'should get edit' do
    get edit_task_path(tasks(:one))
    assert_response :success
  end

  test 'should get delete' do
    delete task_path(tasks(:one))
    assert_response :success
  end
end
