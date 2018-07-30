require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title: 'lorem ipsum',
      descriotion: 'my site is lit!',
      image_url:  'sony.jpeg',
      price:  30000
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  test "can't delete product in cart" do
    assert_difference('products.count',0) do
      delete product_url(products(:two))
    end
    assert_redirects_to products_url
  end

  test "should create product" do
    assert_difference('Products.count') do
      post :create, product: {  title:@product. title, description:@product.description, image_url: @product.image_url, price:@product.price }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: {  title: @product. title, description: @product.description, image_url: @product.image_url, price: @product.price }
    assert_redirected_to product_path(products),(assigns(:product))
  end

  test "should destroy product" do
    assert_difference 'Product.count', -1 do
      delete product_url (@product)
    end

    assert_redirected_to products_path
  end

end
