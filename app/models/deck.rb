class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :decklists
  has_many :cards, through: :decklists
end
