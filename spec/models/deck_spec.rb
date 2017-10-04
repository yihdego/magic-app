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
end
