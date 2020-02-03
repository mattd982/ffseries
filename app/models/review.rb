class Review < ApplicationRecord
  validates :summary, presence: true, length: { maximum: 140, minimum: 3 }
  validates :game, presence: true, length: { maximum: 50, minimum: 3 }
end
