class ReceiptMailer < ApplicationMailer
  def receipt_email(order)
    @title = order.showtime.movie.title
    @time = order.showtime.time.to_s(:long)
    @auditorium = order.showtime.auditorium.title
    mail(to: order.email, subject: 'Receipt for your order')
  end
end
