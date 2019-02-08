class Api::V1::InvoiceItemsController < ApplicationController
  def index
    @invoice_items = InvoiceItem.all
    render json: {invoice_items: @invoice_items}
  end

  def create
    @invoice_item = InvoiceItem.new(invoice_item_params)
    
    if @invoice_item.save      
      render json: { invoice_item: @invoice_item }
    else
      render json: { error: @invoice_item.errors.full_messages }
    end
  end

  def show
    @invoice_item = InvoiceItem.find(params[:id])
    render json: {invoice_item: @invoice_item}
  end

  def update
    @invoice_item = InvoiceItem.find(params[:id])
    if @invoice_item.update(invoice_item_params)
      render json: { invoice_item: @invoice_item }
    else
      render json: { error: @invoice_item.errors.full_messages }
    end    
  end

  def destroy

    @invoice_item = InvoiceItem.find(params[:id])
    if @invoice_item.destroy
      render json: {invoice_item: "invoice_item was successfully destroyed"}
    else
      render json: {error: @invoice_item.errors.full_messages}
    end
  end

  private

  def invoice_item_params
    params.permit(:invoice_id, 
                  :price_partial_id, 
                  :amount,
                  :total_price,
                  :item_text
                  )
  end
end
