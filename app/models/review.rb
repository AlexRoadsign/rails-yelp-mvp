class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :restaurant_id, :content, :rating
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer:true}
end
