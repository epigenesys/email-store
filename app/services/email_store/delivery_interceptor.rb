class EmailStore::DeliveryInterceptor
  def self.delivering_email(message)
    message.delivery_handler = EmailStore::DeliveryHandler
  end
end
