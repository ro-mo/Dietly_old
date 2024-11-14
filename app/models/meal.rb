class Meal < ApplicationRecord
  belongs_to :day
  has_many :foods, dependent: :destroy
end
