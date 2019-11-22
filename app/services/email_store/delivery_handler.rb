class EmailStore::DeliveryHandler

  def self.deliver_mail(message)
    EmailStore::Email.create(
      to_address: message.to.join(', '),
      from_address: message.from.join(', '),
      subject: message.subject,
      body: message.body
    )
  end
end
