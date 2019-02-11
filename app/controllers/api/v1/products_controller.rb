class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: {products: @products}
  end

  def create
    @product = Product.new(product_params)    
    if @product.save
      create_product_prices(@product, params[:price_partials])
      render json: { product: @product }
    else
      render json: { error: @product.errors.full_messages }
    end
  end

  def show
    @product =Product.find(params[:id])
    render json: {product: @product}
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)      
      ProductPrice.where(product_id: @product.id).destroy_all
      create_product_prices(@product, params[:price_partials])
      @product_prices = ProductPrice.all
      render json: { product: @product, product_prices: @product_prices }
    else
      render json: { error: @product.errors.full_messages }
    end    
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      render json: {product: "product was successfully destroyed"}
    else
      render json: {error: @product.errors.full_messages}
    end
  end

  private

  def create_product_prices(product, price_partials)
    price_partials.each {|p| ProductPrice.create(product_id: product.id, price_id: p)}     
  end

  def product_params
    params.require(:product).permit!
  end
end
