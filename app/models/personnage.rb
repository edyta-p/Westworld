class Personnage < ApplicationRecord
  belongs_to :user
  has_many :reservations
end
