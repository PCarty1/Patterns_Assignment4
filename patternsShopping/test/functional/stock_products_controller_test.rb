require 'test_helper'

class StockProductsControllerTest < ActionController::TestCase
  setup do
    @stock_product = stock_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_product" do
    assert_difference('StockProduct.count') do
      post :create, stock_product: { description: @stock_product.description, image: @stock_product.image, manufacturer: @stock_product.manufacturer, price: @stock_product.price, quantity: @stock_product.quantity, stocktype: @stock_product.stocktype, title: @stock_product.title }
    end

    assert_redirected_to stock_product_path(assigns(:stock_product))
  end

  test "should show stock_product" do
    get :show, id: @stock_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_product
    assert_response :success
  end

  test "should update stock_product" do
    put :update, id: @stock_product, stock_product: { description: @stock_product.description, image: @stock_product.image, manufacturer: @stock_product.manufacturer, price: @stock_product.price, quantity: @stock_product.quantity, stocktype: @stock_product.stocktype, title: @stock_product.title }
    assert_redirected_to stock_product_path(assigns(:stock_product))
  end

  test "should destroy stock_product" do
    assert_difference('StockProduct.count', -1) do
      delete :destroy, id: @stock_product
    end

    assert_redirected_to stock_products_path
  end
end
