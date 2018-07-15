require_relative '../../lib/account'
require_relative '../../lib/gym'
require_relative '../../lib/history'
require_relative '../../lib/email'
require_relative '../../lib/person'
require_relative '../../lib/ticket'

RSpec.describe 'Gym' do
  subject(:gym) { Gym.new }

  ##########     PERSON      ##########

  context '#add_person' do
    it {
      p = double('Person', firstname: 'Tomasz', lastname: 'Adamczyk')
      expect { gym.add_person(p.firstname, p.lastname) }.not_to raise_error
    }
    it {
      p = double('Person', firstname: 'Aleksander', lastname: 'Kosma')
      expect { gym.add_person(p.firstname, p.lastname) }.not_to raise_error
    }
  end

  context '#show_person' do
    it { expect { gym.show_person(0) }.not_to raise_error }
    it { expect { gym.show_person(1) }.not_to raise_error }
    it { expect { gym.show_person(2) }.not_to raise_error }
  end

  context '#edit_person' do
    it {
      p = double('Person', firstname: 'Aleksander')
      expect { gym.edit_person(0, p.firstname, 0) }.not_to raise_error
    }
    it {
      p = double('Person', firstname: 'Tomasz')
      expect { gym.edit_person(1, p.firstname, 1) }.not_to raise_error
    }
    it {
      p = double('Person', firstname: 'Adam', lastname: 'Adam')
      expect { gym.edit_person(0, p.firstname, p.lastname) }.not_to raise_error
    }
    it {
      expect { gym.edit_person(2, 2, 2) }.not_to raise_error
    }
  end

  context '#remove_person' do
    it { expect { gym.remove_person(0) }.not_to raise_error }
    it { expect { gym.remove_person(1) }.not_to raise_error }
    it { expect { gym.remove_person(2) }.not_to raise_error }
  end

  ##########     ACCOUNT     ##########

  context '#add_account' do
    it {
      a = double('Account', firstname: 'Tomasz', lastname: 'Adamczyk', email: 'tadamczyk@sigma.ug.edu.pl')
      expect { gym.add_account(a.firstname, a.lastname, a.email) }.not_to raise_error
    }
    it {
      a = double('Account', firstname: 'Aleksander', lastname: 'Kosma', email: 'akosma@sigma.ug.edu.pl')
      expect { gym.add_account(a.firstname, a.lastname, a.email) }.not_to raise_error
    }
    it {
      a = double('Account', firstname: 'Aleksander', lastname: 'Kosma', email: 'akosma')
      expect { gym.add_account(a.firstname, a.lastname, a.email) }.not_to raise_error
    }
  end

  context '#show_account' do
    it { expect { gym.show_account(0) }.not_to raise_error }
    it { expect { gym.show_account(1) }.not_to raise_error }
    it { expect { gym.show_account(2) }.not_to raise_error }
  end

  context '#show_all_accounts' do
    it { expect { gym.show_all_accounts }.not_to raise_error }
  end

  context '#edit_account' do
    it {
      a = double('Account', firstname: 'Aleksander')
      expect { gym.edit_account(0, a.firstname, '0', '0') }.not_to raise_error
    }
    it {
      a = double('Account', firstname: 'Tomasz')
      expect { gym.edit_account(1, a.firstname, '1', '1') }.not_to raise_error
    }
    it {
      a = double('Account', firstname: 'Adam', lastname: 'Adam')
      expect { gym.edit_account(0, a.firstname, a.lastname, '0') }.not_to raise_error
    }
    it {
      a = double('Account', email: 'aadam@sigma.ug.edu.pl')
      expect { gym.edit_account(0, '0', '0', a.email) }.not_to raise_error
    }
    it {
      a = double('Account', email: 'aadam')
      expect { gym.edit_account(0, '0', '0', a.email) }.not_to raise_error
    }
    it {
      expect { gym.edit_account(2, '2', '2', '2') }.not_to raise_error
    }
  end

  context '#remove_account' do
    it { expect { gym.remove_account(0) }.not_to raise_error }
    it { expect { gym.remove_account(1) }.not_to raise_error }
    it { expect { gym.remove_account(2) }.not_to raise_error }
  end

  ##########     TICKET      ##########

  context '#add_ticket' do
    it {
      t = double('Ticket', type: 'One-time pass', price: 10, start_date: '2017-01-01',\
                           end_date: '2017-01-01', active: false)
      expect { gym.add_ticket(t.type, t.price, t.start_date, t.end_date, t.active) }.not_to raise_error
    }
    it {
      t = double('Ticket', type: 'Long-time pass', price: 120, start_date: '2018-01-01',\
                           end_date: '2018-04-01', active: true)
      expect { gym.add_ticket(t.type, t.price, t.start_date, t.end_date, t.active) }.not_to raise_error
    }
  end

  context '#show_ticket' do
    it { expect { gym.show_ticket(0) }.not_to raise_error }
    it { expect { gym.show_ticket(1) }.not_to raise_error }
    it { expect { gym.show_ticket(2) }.not_to raise_error }
  end

  context '#show_all_tickets' do
    it { expect { gym.show_all_tickets }.not_to raise_error }
  end

  context '#edit_ticket' do
    it {
      t = double('Ticket', type: 'Long-time pass')
      expect { gym.edit_ticket(0, t.type, '0', '0', '0', false) }.not_to raise_error
    }
    it {
      t = double('Ticket', price: 100)
      expect { gym.edit_ticket(0, '0', t.price, '0', '0', false) }.not_to raise_error
    }
    it {
      t = double('Ticket', start_date: '2017-12-31')
      expect { gym.edit_ticket(0, '0', '0', t.start_date, '0', true) }.not_to raise_error
    }
    it {
      t = double('Ticket', end_date: '2018-03-15')
      expect { gym.edit_ticket(0, '0', '0', '0', t.end_date, true) }.not_to raise_error
    }
    it {
      t = double('Ticket', active: true)
      expect { gym.edit_ticket(0, '0', '0', '0', '0', t.active) }.not_to raise_error
      gym.show_ticket(0)
    }
    it {
      expect { gym.edit_ticket(1, '1', '1', '1', '1', '1') }.not_to raise_error
      gym.show_ticket(1)
    }
    it {
      expect { gym.edit_ticket(2, '2', '2', '2', '2', '2') }.not_to raise_error
      gym.show_ticket(1)
    }
  end

  context '#remove_ticket' do
    it { expect { gym.remove_ticket(0) }.not_to raise_error }
    it { expect { gym.remove_ticket(1) }.not_to raise_error }
    it { expect { gym.remove_ticket(2) }.not_to raise_error }
  end

  ##########     HISTORY     ##########

  context '#add_history' do
    let(:a1) { double('Account', firstname: 'Tomasz', lastname: 'Adamczyk', email: 'tadamczyk@sigma.ug.edu.pl') }
    let(:a2) { double('Account', firstname: 'Aleksander', lastname: 'Kosma', email: 'akosma@sigma.ug.edu.pl') }
    let(:t1) do
      double('Ticket', type: 'One-time pass', price: 10, start_date: '2018-01-01',\
                       end_date: '2018-01-01', active: false)
    end
    let(:t2) do
      double('Ticket', type: 'Long-time pass', price: 120, start_date: '2018-01-01',\
                       end_date: '2018-04-01', active: true)
    end

    it {
      h = double('History', account: 1, ticket: 1)
      expect { gym.add_history(h.account, h.ticket) }.not_to raise_error
    }
    it {
      gym.add_account(a1.firstname, a1.lastname, a1.email)
      gym.add_account(a2.firstname, a2.lastname, a2.email)
      gym.add_ticket(t1.type, t1.price, t1.start_date, t1.end_date, t1.active)
      gym.add_ticket(t2.type, t2.price, t2.start_date, t2.end_date, t2.active)
      h1 = double('History', account: 0, ticket: 0)
      h2 = double('History', account: 1, ticket: 1)
      expect { gym.add_history(h1.account, h1.ticket) }.not_to raise_error
      expect { gym.add_history(h2.account, h2.ticket) }.not_to raise_error
    }
  end

  context '#show_all_histories' do
    it { expect { gym.show_all_histories }.not_to raise_error }
  end

  context '#show_history' do
    it { expect { gym.show_history(0) }.not_to raise_error }
    it { expect { gym.show_history(1) }.not_to raise_error }
    it { expect { gym.show_history(2) }.not_to raise_error }
    it {
      gym.edit_account(0, '0', '0', 'aadam@sigma.ug.edu.pl')
      expect { gym.show_history(0) }.not_to raise_error
      gym.remove_account(0)
      expect { gym.show_history(0) }.not_to raise_error
    }
    it {
      gym.edit_ticket(1, '1', '1', '1', '1', false)
      expect { gym.show_history(1) }.not_to raise_error
      gym.remove_ticket(1)
      expect { gym.show_history(1) }.not_to raise_error
    }
  end

  context '#add_history after #remove_history' do
    it {
      h = double('History', account: 1, ticket: 0)
      expect { gym.add_history(h.account, h.ticket) }.not_to raise_error
    }
    it { expect { gym.show_all_histories }.not_to raise_error }
  end
end
