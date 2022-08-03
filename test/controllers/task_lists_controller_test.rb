# frozen_string_literal: true

require 'test_helper'

class TaskListsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get task_lists_path
    assert_response :success
  end

  test 'should get show' do
    get task_lists_path(task_lists(:one))
    assert_response :success
  end

  test 'should get new' do
    get new_task_list_path
    assert_response :success
  end

  test 'should get edit' do
    get edit_task_list_path(task_lists(:one))
    assert_response :success
  end

  test 'should get delete' do
    get task_list_path(task_lists(:one))
    assert_response :success
  end
end
