class Api::V1::IssuersController < ApplicationController
  def index
    @issuers = Issuer.all
    render json: {issuers: @issuers}
  end

  def create
    @issuer = Issuer.new(issuer_params)
    
    if @issuer.save      
      render json: { issuer: @issuer }
    else
      render json: { error: @issuer.errors.full_messages }
    end
  end

  def show
    @issuer = Issuer.find(params[:id])
    render json: {issuer: @issuer}
  end

  def update
    @issuer = Issuer.find(params[:id])
    if @issuer.update(issuer_params)
      render json: { issuer: @issuer }
    else
      render json: { error: @issuer.errors.full_messages }
    end    
  end

  def destroy

    @issuer = Issuer.find(params[:id])
    if @issuer.destroy
      render json: {issuer: "issuer was successfully destroyed"}
    else
      render json: {error: @issuer.errors.full_messages}
    end
  end

  private

  def issuer_params
    params.permit(
    :name, 
    :business_area, 
    :unit,
    :phone_number,
    :email,
    :active)
  end
end
