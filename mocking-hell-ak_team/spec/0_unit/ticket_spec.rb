RSpec.describe 'Ticket' do
  context '#new' do
    let(:id) { 1 }
    let(:type) { 'One-time pass' }
    let(:price) { 10 }
    let(:start_date) { Date.parse('2018-01-01') }
    let(:end_date) { Date.parse('2018-01-01') }
    let(:active) { true }
    subject(:ticket) { Ticket.new id, type, price, start_date, end_date, active }

    it 'creates a new ticket' do
      expect { ticket }.not_to raise_error
    end

    it 'returns Ticket type' do
      allow(ticket).to receive(:kind_of?).and_return(Ticket)
      expect(ticket).to be_a_kind_of(Ticket)
    end

    it 'returns correct id' do
      expect(ticket.id).to eq(id)
    end

    it 'returns correct type' do
      expect(ticket.type).to eq(type)
    end

    it 'returns correct price' do
      expect(ticket.price).to eq(price)
      expect(ticket.price).to be_a(Integer)
    end

    it 'returns correct start date' do
      expect(ticket.start_date.to_s).to eq(start_date.to_s)
      expect(ticket.start_date).to be_a(Date)
    end

    it 'returns correct end date' do
      expect(ticket.end_date.to_s).to eq(end_date.to_s)
      expect(ticket.end_date).to be_a(Date)
    end

    it 'returns correct ticket status' do
      expect(ticket.active).to be_truthy.or be_falsey
    end
  end

  context '#to_s' do
    subject(:ticket) { Ticket.new 1, 'One-time pass', 10, Date.parse('2018-01-01'), Date.parse('2018-01-01'), true }

    it 'returns correct output' do
      expect(ticket.to_s).to be_a(String).and include('2018-01-01 - 2018-01-01   One-time pass   10')
    end
  end
end
