class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :entries
  has_many :cards, through: :entries

  def decklist
    @decklist
  end

  def add_decklist(card, quantity = 1)
    entry = Entry.create(card_name: card, quantity: quantity, deck: self)
    if !@decklist
      @decklist = Array.new
      @decklist << entry
    else
      @decklist << entry
    end
  end

end
