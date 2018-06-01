require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:description].any?
  	assert product.errors[:price].any?
  	assert product.errors[:image_url].any?
  end
  test "product is not valid without a unique title  - i18n" do
    product = Product.new(title:  products(:ruby).title,
    	                  description: "yyy",
    	                  price:  1,
    	                  image_url: "fred.gif")
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], 
                 product.errors[:title]
  end
  
end
