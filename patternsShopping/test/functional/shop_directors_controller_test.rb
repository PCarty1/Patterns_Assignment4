require 'test_helper'

class ShopDirectorsControllerTest < ActionController::TestCase
  setup do
    @shop_director = shop_directors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_directors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_director" do
    assert_difference('ShopDirector.count') do
      post :create, shop_director: {  }
    end

    assert_redirected_to shop_director_path(assigns(:shop_director))
  end

  test "should show shop_director" do
    get :show, id: @shop_director
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_director
    assert_response :success
  end

  test "should update shop_director" do
    put :update, id: @shop_director, shop_director: {  }
    assert_redirected_to shop_director_path(assigns(:shop_director))
  end

  test "should destroy shop_director" do
    assert_difference('ShopDirector.count', -1) do
      delete :destroy, id: @shop_director
    end

    assert_redirected_to shop_directors_path
  end
end
