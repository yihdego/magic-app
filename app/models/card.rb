class Card < ActiveRecord::Base
  belongs_to :magic_set

  def set_id
    self.magic_set.cards.index(self) + 1
  end
end
