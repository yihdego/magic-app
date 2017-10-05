class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :entries
  has_many :cards, through: :entries

  def decklist
    @decklist
  end

  def add_decklist(card, quantity = 1)
    if card == Card
      Entry.create(card: card, quantity: quantity, deck: self)
    else
      Entry.create(card: card.last, quantity: quantity, deck: self)
    end
  end

end
