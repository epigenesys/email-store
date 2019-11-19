class DeliveryHandler

  def initialize(message)
    @message = message
  end

  attr_accessor :message

  def deliver_mail(message)
    EmailStore::Email.create(
      to_address: message.to.join(', '),
      from_address: message.from.join(', '),
      subject: message.subject,
      body: message.body
    )
  end
end
