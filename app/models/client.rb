class Client < ApplicationRecord
  belongs_to :doctor
  has_many :diets, dependent: :destroy
end
