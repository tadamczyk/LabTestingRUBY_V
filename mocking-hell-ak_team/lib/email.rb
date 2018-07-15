require 'email_address'

class Email
  attr_accessor :email_address

  def initialize(email_address)
    @email_address = EmailAddress.new(email_address)
  end

  def to_s
    email_address.original
  end

  def valid?
    email_address.valid?
  end
end
