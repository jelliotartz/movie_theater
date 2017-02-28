module OrdersHelper
  def order_params
    params.require(:order).permit(:name, :email, :credit_card_number, :expiration_date)
  end
end
