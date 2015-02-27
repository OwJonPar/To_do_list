require 'test_helper'

class ToDosControllerTest < ActionController::TestCase
  setup do
    @to_do = to_dos(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @to_do
    assert_response :success
  end

  test "should get create" do
    get :create, id: @to_do, to_do: {text: "Monkey"}
    assert_redirected_to root_path
  end

  test "should get show" do
    get :show, id: @to_do
    assert_response :success
  end

  test "should get update" do
    get :update, id: @to_do, to_do: {text: "Monkey"}
    assert_redirected_to root_path 
  end

  test "should get destroy" do
    get :destroy, id: @to_do
    assert_redirected_to to_dos_url
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
