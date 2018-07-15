require 'rainbow'
require 'after_do'

class Gym
  extend AfterDo

  class << self
    attr_accessor :persons, :accounts, :tickets, :history
  end

  @@persons = []
  @@accounts = []
  @@tickets = []
  @@histories = []

  ##########     PERSON      ##########

  def add_person(firstname, lastname)
    max = @@persons.size
    id = 0
    id += 1 while id < max && !@@persons[id].nil?
    person = Person.new(id, firstname, lastname)
    @@persons.insert(id, person)
    puts Rainbow("Added new person on id => #{@@persons[id].id}.").aqua
  end

  def show_person(id)
    if !@@persons.at(id).nil?
      puts Rainbow("Person on id => #{@@persons[id].id}: #{@@persons[id]}").lightgreen
    else
      puts Rainbow("Person on id => #{id} does not exist.").magenta
    end
  end

  def edit_person(id, firstname, lastname)
    if !@@persons.at(id).nil?
      @@persons[id].firstname = firstname if firstname != id.to_s && firstname != ''
      @@persons[id].lastname = lastname if lastname != id.to_s && lastname != ''
      puts Rainbow("Updated person on id => #{@@persons[id].id}.").cyan
    else
      puts Rainbow("Person on id => #{id} does not exist.").magenta
    end
  end

  def remove_person(id)
    if !@@persons.at(id).nil?
      @@persons[id] = nil
      puts Rainbow("Removed person on id => #{id}.").blue
    else
      puts Rainbow("Person on id => #{id} does not exist.").magenta
    end
  end

  ##########     ACCOUNT     ##########

  def add_account(firstname, lastname, email)
    if !Email.new(email).valid?
      puts Rainbow('E-mail address does not valid.').magenta
    else
      max = @@accounts.size
      id = 0
      id += 1 while id < max && !@@accounts[id].nil?
      add_person(firstname, lastname)
      account = Account.new(id, @@persons[id], Email.new(email))
      @@accounts.insert(id, account)
      puts Rainbow("Added new account on id => #{@@accounts[id].id}.").aqua
    end
  end

  def show_account(id)
    if !@@accounts.at(id).nil?
      puts Rainbow("Account on id => #{@@accounts[id].id}: #{@@accounts[id]}").lightgreen
    else
      puts Rainbow("Account on id => #{id} does not exist.").magenta
    end
  end

  def edit_account(id, firstname, lastname, email)
    if !@@accounts.at(id).nil?
      if email == id.to_s || email == '' || Email.new(email).valid?
        edit_person(id, firstname, lastname)
        @@accounts[id].person = @@persons[id]
        @@accounts[id].email = Email.new(email) if email != id.to_s && email != ''
        puts Rainbow("Updated account on id => #{@@accounts[id].id}.").cyan
      else
        puts Rainbow('E-mail address does not valid.').magenta
      end
    else
      puts Rainbow("Account on id => #{id} does not exist.").magenta
    end
  end

  def remove_account(id)
    if !@@accounts.at(id).nil?
      @@accounts[id] = nil
      remove_person(id)
      puts Rainbow("Removed account on id => #{id}.").blue
    else
      puts Rainbow("Account on id => #{id} does not exist.").magenta
    end
  end

  def show_all_accounts
    puts Rainbow('Accounts:').lightgreen.underline
    i = 0
    while i < @@accounts.size
      puts Rainbow("Account on id => #{@@accounts[i].id}: #{@@accounts[i]}").lightgreen unless @@accounts.at(i).nil?
      i += 1
    end
  end

  ##########     TICKET      ##########

  def add_ticket(type, price, start_date, end_date, _active)
    max = @@tickets.size
    id = 0
    id += 1 while id < max && !@@tickets[id].nil?
    active = Date.parse(end_date) >= Date.today
    ticket = Ticket.new(id, type, price.to_i, Date.parse(start_date), Date.parse(end_date), active)
    @@tickets.insert(id, ticket)
    puts Rainbow("Added new ticket on id => #{@@tickets[id].id}.").aqua
  end

  def show_ticket(id)
    if !@@tickets.at(id).nil?
      if @@tickets[id].active == true
        puts Rainbow("Ticket on id => #{@@tickets[id].id}: (ACTIVE) #{@@tickets[id]}").lightgreen
      else
        puts Rainbow("Ticket on id => #{@@tickets[id].id}: (NONACTIVE) #{@@tickets[id]}").red
      end
    else
      puts Rainbow("Ticket on id => #{id} does not exist.").magenta
    end
  end

  def edit_ticket(id, type, price, start_date, end_date, active)
    if !@@tickets.at(id).nil?
      @@tickets[id].type = type if type != id.to_s && type != ''
      @@tickets[id].price = price.to_i if price != id && price != ''
      @@tickets[id].start_date = Date.parse(start_date) if start_date != id.to_s && start_date != ''
      @@tickets[id].end_date = Date.parse(end_date) if end_date != id.to_s && end_date != ''
      @@tickets[id].active = active if active != id && active != ''
      puts Rainbow("Updated ticket on id => #{@@tickets[id].id}.").cyan
    else
      puts Rainbow("Ticket on id => #{id} does not exist.").magenta
    end
  end

  def remove_ticket(id)
    if !@@tickets.at(id).nil?
      @@tickets[id] = nil
      puts Rainbow("Removed ticket on id => #{id}.").blue
    else
      puts Rainbow("Ticket on id => #{id} does not exist.").magenta
    end
  end

  def show_all_tickets
    puts Rainbow('Tickets:').lightgreen.underline
    i = 0
    while i < @@tickets.size
      unless @@tickets.at(i).nil?
        if @@tickets[i].active == true
          puts Rainbow("Ticket on id => #{@@tickets[i].id}: (ACTIVE) #{@@tickets[i]}").lightgreen
        else
          puts Rainbow("Ticket on id => #{@@tickets[i].id}: (NONACTIVE) #{@@tickets[i]}").red
        end
      end
      i += 1
    end
  end

  ##########     HISTORY     ##########

  def add_history(account_id, ticket_id)
    max = @@histories.size
    id = 0
    id += 1 while id < max && !@@histories[id].nil?
    if !@@accounts[account_id].nil? && !@@tickets[ticket_id].nil?
      history = History.new(id, @@accounts[account_id], @@tickets[ticket_id])
      @@histories.insert(id, history)
      puts Rainbow("Added new history item on id => #{@@histories[id].id}.").aqua
    else
      puts Rainbow("Account on id => #{account_id} does not exist.").magenta if @@accounts[account_id].nil?
      puts Rainbow("Ticket on id => #{ticket_id} does not exist.").magenta if @@tickets[ticket_id].nil?
      puts Rainbow('Adding a new entry failed.').magenta.underline
    end
  end

  def show_history(id)
    if !@@histories.at(id).nil?
      puts Rainbow("History on id => #{@@histories[id].id}: #{@@histories[id]}").lightgreen
    else
      puts Rainbow("History on id => #{id} does not exist.").magenta
    end
  end

  def show_all_histories
    puts Rainbow('Histories:').lightgreen.underline
    i = 0
    while i < @@histories.size
      puts Rainbow("History on id => #{@@histories[i].id}: #{@@histories[i]}").lightgreen unless @@histories.at(i).nil?
      i += 1
    end
  end

  def update_history
    i = 0
    while i < @@histories.size
      unless @@histories[i].nil?
        if !@@accounts[@@histories[i].account.id].nil? && !@@tickets[@@histories[i].ticket.id].nil?
          history = History.new(i, @@accounts[@@histories[i].account.id], @@tickets[@@histories[i].ticket.id])
          @@histories[i] = history
        else
          remove_ticket(@@histories[i].ticket.id) unless @@tickets[@@histories[i].ticket.id].nil?
          @@histories[i] = nil
        end
      end
      i += 1
    end
  end

  after :edit_account, :remove_account, :edit_ticket, :remove_ticket do |*, gym|
    gym.update_history
  end
end
