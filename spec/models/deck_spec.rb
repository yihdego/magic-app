require_relative '../spec_helper'

describe Deck do
  let!(:user) { User.create(name: "Drake" )}
  let!(:deck) { Deck.create(name: "Grixis Control", user: user)}
  describe 'attributes' do
    it 'has a name' do
      expect(deck.name).to eq 'Grixis Control'
    end
    it 'has a user' do
      expect(deck.user).to eq user
    end
  end
  describe 'decklist method' do
    let(:bolt) { Card.create(name: "Lighting Bolt") }
    let(:counterspell) { Card.create(name: "Counterspell") }
    it 'can add cards to the decklist' do
      deck.add_decklist(bolt, 4)
      expect(deck.entries.length).to eq(1)
    end
    it 'can return the quantity of a card' do
      deck.add_decklist(bolt, 4)
      deck.add_decklist(counterspell, 3)
      expect(deck.entries.last.quantity).to eq(3)
    end
  end
end
