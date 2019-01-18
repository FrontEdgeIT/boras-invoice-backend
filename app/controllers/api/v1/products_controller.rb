class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: {products: @products}
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save      
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
      render json: { product: @product }
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

  def product_params
    params.permit(
    :name, 
    :business_area, 
    :invoice_type,
    :account,
    :vat,
    :active)
  end
end
