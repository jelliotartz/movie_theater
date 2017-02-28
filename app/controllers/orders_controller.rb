class OrdersController < ApplicationController
  include OrdersHelper

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @title = @order.showtime.movie.title
    @time = @order.showtime.time.to_s(:long)
    @auditorium = @order.showtime.auditorium.title
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.showtime_id = params[:showtime]
    @order.showtime.tickets_sold += 1
    respond_to do |format|
      if @order.save
        ReceiptMailer.receipt_email(@order).deliver_now
        format.html { redirect_to order_path(@order) }
      else
        flash[:error] = @order.errors
        format.html { redirect_to new_order_path(showtime: @order.showtime_id) }
      end
    end
  end
end
