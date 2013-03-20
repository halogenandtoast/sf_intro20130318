class Deck < ActiveRecord::Base
  attr_accessible :name
  has_many :cards
  # Deck.new(attributes)
  # Deck.create(attributes)
  # deck.update_attributes(attributes)
  #
  def self.current
    order("created_at DESC")
  end
end
