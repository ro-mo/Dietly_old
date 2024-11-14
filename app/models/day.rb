class Day < ApplicationRecord
  belongs_to :diet
  has_many :meals, dependent: :destroy
end
