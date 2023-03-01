class Personnage < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :role, presence: true
  validates :price, presence: true
end
