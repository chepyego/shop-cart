require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: {  }
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
    get :show, id: @cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart
    assert_response :success
  end

  test "should update cart" do
    patch :update, id: @cart, cart: {  }
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    post line_items_url, params: { product_id  products(:electronics).id }

    @cart = Cart.find(session[:cart_id])
    assert_difference('Cart.count', -1) do
      delete :cart_url(@cart) 
    end

    assert_redirected_to store_index_url
  end
  test "should update line_item" do
    patch line_item_url(@line_item),
     params: {line_item: {product_id: @line_item.product_id}}
    assert_redirected_to line_item_url(@line_item)
  end
end
