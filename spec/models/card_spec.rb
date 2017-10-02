require_relative '../spec_helper'

describe Card do
  let(:card) { Card.find(2) }
  describe 'attributes' do
    it 'has a name' do
      expect(card.name).to eq "Anafenza, Kin-Tree Spirit"
    end
  end
end
