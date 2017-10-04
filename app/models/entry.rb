class Entry < ActiveRecord::Base
  belongs_to :deck
  belongs_to :card
  validates :card, presence: true, uniqueness: { scope: :deck }
  validates :quantity, presence: true
end
