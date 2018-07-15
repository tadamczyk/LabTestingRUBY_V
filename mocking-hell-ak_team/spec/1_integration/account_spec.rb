RSpec.describe 'Account' do
  context '#new' do
    let(:id) { 1 }
    let(:person) { double('Person', id: 1, firstname: 'Tomasz', lastname: 'Adamczyk') }
    let(:email) { double('Email', email_address: 'tadamczyk@sigma.ug.edu.pl') }
    subject(:account) { Account.new id, person, email }

    it 'creates a new account' do
      expect { account }.not_to raise_error
    end

    it 'returns Account type' do
      allow(account).to receive(:kind_of?).and_return(Account)
      expect(account).to be_a_kind_of(Account)
    end

    it 'returns correct id' do
      expect(account.id).to eq(id)
    end

    it 'returns correct person' do
      expect(account.person).to eq(person)
      allow(person).to receive(:kind_of?).and_return(Person)
      expect(account.person).to be_a_kind_of(Person)
      expect(account.person.to_s).to be_a(String).and include(person.to_s)
    end

    it 'returns correct email' do
      expect(account.email).to eq(email)
      allow(email).to receive(:kind_of?).and_return(Email)
      expect(account.email).to be_a_kind_of(Email)
      expect(account.email.to_s).to be_a(String).and include(email.to_s)
    end
  end

  context '#to_s' do
    let(:id) { 1 }
    let(:person) { double('Person', id: 1, firstname: 'Tomasz', lastname: 'Adamczyk') }
    let(:email) { double('Email', email_address: 'tadamczyk@sigma.ug.edu.pl') }
    subject(:account) { Account.new id, person, email }

    it 'returns correct output' do
      expect(account.to_s).to be_a(String).and include(person.to_s, email.to_s)
    end
  end
end
