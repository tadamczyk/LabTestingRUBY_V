require_relative '../lib/rna_transcription'

RSpec.describe '../lib/rna_transcription.rb' do
  describe '#of_dna' do
    it "returns 'G' after rna complement 'C'" do
      expect(Complement.of_dna('C')).to eq 'G'
    end

    it "returns 'C' after rna complement 'G'" do
      expect(Complement.of_dna('G')).to eq 'C'
    end

    it "returns 'A' after rna complement 'T'" do
      expect(Complement.of_dna('T')).to eq 'A'
    end

    it "returns 'U' after rna complement 'A'" do
      expect(Complement.of_dna('A')).to eq 'U'
    end

    it "returns 'UGCACCAGAAUU' after rna complement 'A'" do
      expect(Complement.of_dna('ACGTGGTCTTAA')).to eq 'UGCACCAGAAUU'
    end

    it "returns '' after rna complement 'U'" do
      expect(Complement.of_dna('U')).to eq ''
    end

    it "returns '' after rna complement 'XXX'" do
      expect(Complement.of_dna('XXX')).to eq ''
    end

    it "returns '' after rna complement 'ACGTXXXCTTAA'" do
      expect(Complement.of_dna('ACGTXXXCTTAA')).to eq ''
    end
  end
end
