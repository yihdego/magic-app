require_relative '../spec_helper'

describe Entry do
  let(:card) { Card.create(name: "Nicol Bolas") }
  let!(:deck) { Deck.create(name: "Grixis Control")}
  let(:entry) { Entry.create(card: card, quantity: 2, deck: deck) }
  describe 'attributes' do
    it 'has a card name' do
      expect(entry.card.name).to eq "Nicol Bolas"
    end
    it 'has a quantity' do
      expect(entry.quantity).to eq 2
    end

    it 'has an association to a deck' do
      expect(entry.deck).to eq(deck)
    end
  end
end
