class Personnage < ApplicationRecord
  belongs_to :user
  has_many :reservations

  CATEGORY = ['good', 'bad']
  ROLE = ['sherif', 'thief', 'marshall', 'cowboy', 'criminal', 'doctor']
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :role, presence: true, inclusion: { in: ROLE }
  validates :price, presence: true
end
