class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :entries

  def decklist
    @decklist || @decklist = Array.new
  end

  def add_decklist(card, quantity = 1)
    entry = Entry.create(card_name: card.name, quantity: quantity)
    if !@decklist
      @decklist = Array.new
      @decklist << entry
    else
      @decklist << entry
    end
  end

end
