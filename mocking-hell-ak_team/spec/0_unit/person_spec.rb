RSpec.describe 'Person' do
  context '#new' do
    let(:id) { 1 }
    let(:firstname) { 'Tomasz' }
    let(:lastname) { 'Adamczyk' }
    subject(:person) { Person.new id, firstname, lastname }

    it 'creates a new person' do
      expect { person }.not_to raise_error
    end

    it 'returns Person type' do
      allow(person).to receive(:kind_of?).and_return(Person)
      expect(person).to be_a_kind_of(Person)
    end

    it 'returns correct id' do
      expect(person.id).to eq(id)
    end

    it 'returns correct firstname' do
      expect(person.firstname).to eq(firstname)
    end

    it 'returns correct lastname' do
      expect(person.lastname).to eq(lastname)
    end
  end

  context '#to_s' do
    subject(:person) { Person.new 1, 'Tomasz', 'Adamczyk' }

    it 'returns correct output' do
      expect(person.to_s).to be_a(String).and include('Tomasz Adamczyk')
    end
  end
end
