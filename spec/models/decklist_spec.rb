require_relative '../spec_helper'

describe Decklist do
  let!(:user) { User.create(name: "Drake" )}
  let(:lightingbolt) { Card.create(name: "Lighting Bolt") }
  let(:counterspell) { Card.create(name: "Counterspell") }
  let!(:deck) { Deck.create(name: "Grixis Control", user: user)}
  let!(:decklist) { Decklist.create(deck: deck, cards: [lightingbolt, counterspell])}
  describe 'attributes' do
    it 'has a deck'
    it 'has a cards collection'
    it 'has a specific card'
  end
end
