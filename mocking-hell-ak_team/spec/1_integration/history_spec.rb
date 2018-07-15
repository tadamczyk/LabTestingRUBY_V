RSpec.describe 'History' do
  context '#new' do
    let(:id) { 1 }
    let(:account) { double('Account', id: 1, person: double('Person'), email: double('Email')) }
    let(:ticket) { double('Ticket') }
    subject(:history) { History.new id, account, ticket }

    it 'creates a new history item' do
      expect { history }.not_to raise_error
    end

    it 'returns History type' do
      allow(history).to receive(:kind_of?).and_return(History)
      expect(history).to be_a_kind_of(History)
    end

    it 'returns correct id' do
      expect(history.id).to eq(id)
    end

    it 'returns correct account' do
      expect(history.account).to eq(account)
      allow(history.account).to receive(:kind_of?).and_return(Account)
      expect(history.account).to be_a_kind_of(Account)
    end

    it 'returns correct ticket' do
      expect(history.ticket).to eq(ticket)
      allow(history.ticket).to receive(:kind_of?).and_return(Ticket)
      expect(history.ticket).to be_a_kind_of(Ticket)
    end
  end

  context '#to_s' do
    let(:id) { 1 }
    let(:account) { double('Account', id: 1, person: double('Person'), email: double('Email')) }
    let(:ticket) { double('Ticket', id: 1) }
    subject(:history) { History.new id, account, ticket }

    it 'returns correct output' do
      expect(history.to_s).to be_a(String).and include(account.email.to_s, ticket.id.to_s)
    end
  end
end
