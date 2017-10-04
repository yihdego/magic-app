class Deck < ActiveRecord::Base
  belongs_to :user

  def decklist
    @decklist || @decklist = Array.new
  end

  def add_decklist(card, amount = 1)
    entry = Entry.create(card, amount)
    if !@decklist
      @decklist = Array.new
      @decklist << entry
    else
      @decklist << entry
    end
  end



end
