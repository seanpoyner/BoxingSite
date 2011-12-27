require 'test_helper'

class CaptainsControllerTest < ActionController::TestCase
  setup do
    @captain = captains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create captain" do
    assert_difference('Captain.count') do
      post :create, :captain => @captain.attributes
    end

    assert_redirected_to captain_path(assigns(:captain))
  end

  test "should show captain" do
    get :show, :id => @captain.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @captain.to_param
    assert_response :success
  end

  test "should update captain" do
    put :update, :id => @captain.to_param, :captain => @captain.attributes
    assert_redirected_to captain_path(assigns(:captain))
  end

  test "should destroy captain" do
    assert_difference('Captain.count', -1) do
      delete :destroy, :id => @captain.to_param
    end

    assert_redirected_to captains_path
  end
end
