class Review < ApplicationRecord
  belongs_to :restaurant
  # content cannot be blank (FAILED - 7)
  # rating cannot be blank (FAILED - 8)
  # parent restaurant cannot be nil
  # rating should be an integer (FAILED - 9)
  # rating should be a number between 0 and 5 (FAILED - 10)

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }, numericality: { only_integer: true }
  validates :content, presence: true
  validates :restaurant, presence: true

end
