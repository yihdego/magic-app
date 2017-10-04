class Card < ActiveRecord::Base
  belongs_to :magic_set
  has_many :entries
  has_many :decks, through: :entries

  def set_id
    self.magic_set.cards.index(self) + 1
  end
end
