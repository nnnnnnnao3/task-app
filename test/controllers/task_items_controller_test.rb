require "test_helper"

class TaskItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_items_index_url
    assert_response :success
  end
end
