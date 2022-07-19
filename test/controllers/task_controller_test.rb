# frozen_string_literal: true

require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get task_index_url
    assert_response :success
  end

  test 'should get tasks_overview' do
    get task_tasks_overview_url
    assert_response :success
  end
end
