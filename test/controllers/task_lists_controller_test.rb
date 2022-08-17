# frozen_string_literal: true

require 'test_helper'

class TaskListsControllerTest < ActionDispatch::IntegrationTest
  def setup; end

  test 'should get index' do
    log_in_as
    get task_lists_path
    assert_response :success
  end

  test 'should get show' do
    log_in_as
    get task_lists_path(task_lists(:one))
    assert_response :success
  end

  test 'should get new' do
    log_in_as
    get new_task_list_path
    assert_response :success
  end

  test 'should get edit' do
    log_in_as
    get edit_task_list_path(task_lists(:one))
    assert_response :success
  end

  test 'should get delete' do
    log_in_as
    list = TaskList.create(name: 'New')
    id = list.id

    delete task_list_path(list)

    assert_raises(ActiveRecord::RecordNotFound) { TaskList.find(id) }
  end
end
