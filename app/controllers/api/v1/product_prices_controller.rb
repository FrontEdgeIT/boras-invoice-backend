class Api::V1::ProductPricesController < ApplicationController
  def index
    @product_prices = ProductPrice.all
    render json: {product_prices: @product_prices}
  end

  def create
    @product_price = ProductPrice.new(product_params)
    
    if @product_price.save      
      render json: { product_price: @product_price }
    else
      render json: { error: @product_price.errors.full_messages }
    end
  end

  def show
    @product_price =ProductPrice.find(params[:id])
    render json: {product_price: @product_price}
  end
  def update
    @product_price = ProductPrice.find(params[:id])
    if @product_price.update(product_params)
      render json: { product_price: @product_price }
    else
      render json: { error: @product_price.errors.full_messages }
    end    
  end

  def destroy
    @product_price = ProductPrice.find(params[:id])
    if @product_price.destroy
      render json: {product_price: "ProductPrice was successfully destroyed"}
    else
      render json: {error: @product_price.errors.full_messages}
    end
  end

  private

  def product_params
    params.require(:product_price).permit!
  end
end
