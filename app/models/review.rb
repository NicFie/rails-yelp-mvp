class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, comparison: { greater_than_or_equal_to: 0 }
  validates :rating, comparison: { less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
