class Api::V1::PricePartialsController < ApplicationController
  def index
    @price_partials = PricePartial.all
    render json: {price_partials: @price_partials}
  end

  def create
    @price_partial = PricePartial.new(price_partial_params)
    
    if @price_partial.save
      render json: { price_partial: @price_partial }
    else
      render json: { error: @price_partial.errors.full_messages }
    end
  end

  def show
    @price_partial = PricePartial.find(params[:id])
    render json: {price_partial: @price_partial}
  end

  def update
    @price_partial = PricePartial.find(params[:id])
    if @price_partial.update(price_partial_params)
      render json: { price_partial: @price_partial }
    else
      render json: { error: @price_partial.errors.full_messages }
    end    
  end

  def destroy

    @price_partial = PricePartial.find(params[:id])
    if @price_partial.destroy
      ProductPrice.where(price_id: @price_partial.id).destroy_all
      render json: {price_partial: "Price_partial was successfully destroyed"}
    else
      render json: {error: @price_partial.errors.full_messages}
    end
  end

  private

  def price_partial_params
    params.permit(:name, 
                  :adjustable, 
                  :standard_text,
                  :active,
                  :price,
                  :unit)
  end
end
