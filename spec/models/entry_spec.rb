require_relative '../spec_helper'

describe Entry do
  let(:card) { Card.create(name: "Anafenza, Kin-Tree Spirit") }
  let(:entry) { Entry.create(card_name: "Anafenza, Kin-Tree Spirit", quantity: 2)}
  describe 'attributes' do
    it 'has a card name' do
      expect(entry.card_name).to eq "Anafenza, Kin-Tree Spirit"
    end
    it 'has a quantity' do
      expect(entry.quantity).to eq 2
    end
  end
end
