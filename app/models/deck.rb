class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :cards_decks
  has_many :cards, through: :decks_cards
end
