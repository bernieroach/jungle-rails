class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user.subject
  #

  def order_confirmation(order)
    @order = order
    mail(to: @order.email, subject: "Order: #{@order.id}")
  end

  def new_user
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
