class OrderNotifier < ActionMailer::Base
  default from: "noreply-pasticceria@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.receiver.subject
  #
  def receiver(order)
    @order = order
		
    mail to: order.email, subject: 'Conferma ordine Pasticceria Siciliana'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order
		
    mail to: order.email, subject: 'Invio ordine Pasticceria Siciliana'
  end

end
