class OrdersController < ApplicationController
  before_action :set_order, only:[:edit, :update, :show, :destroy]
  def index
    respond_to do |format|
      @orders = Order.all.order('created_at ASC')
      format.html {}
      format.js {render 'index.js.erb'}
    end
  end

  def new
    @order = Order.new
    item = @order.items.build
  end

  def create
    @order = Order.new(order_params)
    @order.save!
    redirect_to order_path(@order), notice: '請結帳'
  end

  def edit
    item = @order.items
  end

  def update
    @order.update(order_params)
    redirect_to new_order_path
  end

  def destroy
  end

  def show
  end

  private

  def set_order
    @order = Order.find(params[:id])  
  end

  def order_params
    params.require(:order).permit(:name, :price, items_attributes: [:id, :name, :amount, :price, :order_id, :food_id])
  end
end
