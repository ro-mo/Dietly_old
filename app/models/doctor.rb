class Doctor < ApplicationRecord
  has_many :clients, dependent: :destroy
end
