RSpec.describe 'Email' do
  context '#new' do
    let(:email_address) { 'tadamczyk@sigma.ug.edu.pl' }
    subject(:email) { Email.new email_address }

    it 'creates a new email' do
      expect { email }.not_to raise_error
    end

    it 'returns Email type' do
      allow(email).to receive(:kind_of?).and_return(Email)
      expect(email).to be_a_kind_of(Email)
    end
  end

  context '#valid?' do
    let(:valid_email_address) { 'tadamczyk@sigma.ug.edu.pl' }
    subject(:valid_email) { Email.new valid_email_address }

    it 'returns true when email address is valid' do
      expect(valid_email.valid?).to be_truthy
    end

    let(:not_valid_email_address) { 'tadamczyk' }
    subject(:not_valid_email) { Email.new not_valid_email_address }

    it 'returns false when email address is not valid' do
      expect(not_valid_email.valid?).to be_falsey
    end
  end

  context '#to_s' do
    let(:email_address) { 'tadamczyk@sigma.ug.edu.pl' }
    subject(:email) { Email.new email_address }

    it 'returns correct output' do
      expect(email.to_s).to be_a(String).and include(email_address)
    end
  end
end
