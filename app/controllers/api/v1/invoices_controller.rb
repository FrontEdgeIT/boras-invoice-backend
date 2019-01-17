class Api::V1::InvoicesController < ApplicationController
  def index
    @invoices = Card.all
    render json: {invoices: @invoices}
  end

  def create
    @invoice = Invoice.new(invoice_params)
    
    if @invoice.save      
      render json: { invoice: @invoice }
    else
      render json: { error: @invoice.errors.full_messages }
    end
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update(invoice_params)
      render json: { invoice: @invoice }
    else
      render json: { error: @invoice.errors.full_messages }
    end    
  end

  def destroy

    @invoice = Invoice.find(params[:id])
    if @invoice.destroy

      render json: {invoice: "invoice was successfully destroyed and removed from content packages they were included in"}
    else
      render json: {error: "Could not destroy invoice"}
    end
  end

  private

  def invoice_params
    params.permit(:implementation_date, 
                  :customer_id, 
                  :reference,
                  :issuer_id,
                  :billed,
                  :work_order,
                  :project)
  end
end
