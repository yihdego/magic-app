require_relative '../spec_helper'

describe Entry do
  let(:card) { Card.new(name: "Anafenza, Kin-Tree Spirit") }
  let(:entry) { Entry.new(card, 2)}
  describe 'attributes' do
    it 'has a card name' do
      expect(entry.card).to eq "Anafenza, Kin-Tree Spirit"
    end
    it 'has a quantity' do
      expect(entry.quantity).to eq 2
    end
  end
end
