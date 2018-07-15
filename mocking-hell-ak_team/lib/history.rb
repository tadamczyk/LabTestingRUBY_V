class History
  attr_accessor :id, :account, :ticket

  def initialize(id, account, ticket)
    @id = id
    @account = account
    @ticket = ticket
  end

  def to_s
    history = "#{account.email} - ticket # #{ticket.id}"
    history
  end
end
