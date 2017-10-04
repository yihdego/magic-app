class Entry
  attr_accessor :quantity

  def initialize(card, amount=1)
    @card = card
    @quantity = amount
  end

  def card
    @card.name
  end
end
