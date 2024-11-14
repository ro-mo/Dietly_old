class Diet < ApplicationRecord
  belongs_to :client
  has_many :days, dependent: :destroy
end
