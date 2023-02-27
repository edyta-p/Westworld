class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :personnage

  validates :date, presence: true
end
