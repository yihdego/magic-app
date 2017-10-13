class Card < ActiveRecord::Base
  belongs_to :magic_set
  has_many :entries
  has_many :decks, through: :entries

  def set_id
    self.magic_set.cards.index(self) + 1
  end

  def image
    "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=#{self.multiverseid}&type=card"
  end

  def mana_symbol(field)
    if field.include?("{W}")
    return  "<img src='/images/W.svg' alt='{W}'>"
    end
  end
end
