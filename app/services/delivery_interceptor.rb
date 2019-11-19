class DeliveryInterceptor
  def self.delivering_email(message)
    message.delivery_handler = DeliveryHandler.new(message)
  end
end
