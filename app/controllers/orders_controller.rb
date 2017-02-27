class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    # @showtime = Showtime.find(params[:showtime])
  end

  def create
    @order = Order.new
    @order.name = params[:order][:name]
    @order.email = params[:order][:email]
    @order.credit_card_number = params[:order][:credit_card_number]
    @order.expiration_date = params[:order][:expiration_date]
    # TODO: why can't I get @showtime from new?
    @order.showtime_id = params[:showtime]
    @order.save!

    redirect_to order_path(@order)
  end
end
