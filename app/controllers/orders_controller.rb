class OrdersController < ApplicationController
  def index = Order.all

  end
  def new
    @order = Order.new
  end

  def create
    @order
  end
end
