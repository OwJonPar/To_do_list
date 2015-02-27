require 'test_helper'

class ToDoPathTest < ActionDispatch::IntegrationTest
  test "see that paths work correctly" do
    get root_path
    assert_response :success
    assert_template "to_dos/index"
    assert_select 'input#go-to-new'
    get new_to_do_path
    assert_response :success
    assert_template "to_dos/new"
    assert_select 'input#to_do_text'
  end
end
