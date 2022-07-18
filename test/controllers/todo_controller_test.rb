require "test_helper"

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todo_index_url
    assert_response :success
  end

  test "should get taksOverview" do
    get todo_taksOverview_url
    assert_response :success
  end
end
