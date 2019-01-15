class Product < ApplicationRecord
  def index
    @products = Product.all
    render json: {product: @products}
  end
end
