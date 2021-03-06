# Preview all emails at http://localhost:3000/rails/mailers/order_notifier
class OrderNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/receiver
  def receiver
    OrderNotifier.receiver
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/shipped
  def shipped
    OrderNotifier.shipped
  end

end
