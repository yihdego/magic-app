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
    symbolsarray = field.split('}')
    mana = ""
    symbolsarray.each do |symbol|
      if symbol.include?("{W")
        mana += "<img src='/images/W.svg' width='20' alt='{W}'> "
      end
    end
    return mana
  end
end
