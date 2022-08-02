# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get tasks_path
    assert_response :success
  end

  # Fixed ID ??? TODO
  test 'should get show' do
    get task_path(tasks(:one))
    assert_response :success
  end

  test 'should get new' do
    get new_task_path
    assert_response :success
  end

  # Fixed ID ??? TODO
  test 'should get edit' do
    get edit_task_path(tasks(:one))
    assert_response :success
  end

  # Fixed ID ??? TODO
  test 'should get delete' do
    get delete_task_path(tasks(:one))
    assert_response :success
  end
end
