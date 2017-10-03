class Deck < ActiveRecord::Base
  belongs_to :user
  belongs_to :decks_users
  has_many :cards, through: :decks_users
end
