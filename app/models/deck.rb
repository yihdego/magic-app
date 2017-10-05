class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :entries
  has_many :cards, through: :entries

  def decklist
    @decklist
  end

  def add_decklist(card, quantity = 1)
    Entry.create(card: card, quantity: quantity, deck: self)
  end

end
