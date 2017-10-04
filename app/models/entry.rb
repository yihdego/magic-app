class Entry < ActiveRecord::Base
  belongs_to :deck
  validates :card_name, presence: true, uniqueness: { scope: :deck }
  validates :quantity, presence: true
end
