class Api::V1::CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: {customers: @customers}
  end

  def create
    @customer = Customer.new(customer_params)
    
    if @customer.save      
      render json: { customer: @customer }
    else
      render json: { error: @customer.errors.full_messages }
    end
  end

  def show
    @customer =Customer.find(params[:id])
    render json: {customer: @customer}
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      render json: { customer: @customer }
    else
      render json: { error: @customer.errors.full_messages }
    end    
  end

  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      render json: {customer: "customer was successfully destroyed"}
    else
      render json: {error: @customer.errors.full_messages}
    end
  end

  private

  def customer_params
    params.permit(
    :name, 
    :department, 
    :org_number,
    :personal_number,
    :address,
    :personal_number,
    :city,
    :active)
  end
end
