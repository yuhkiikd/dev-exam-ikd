class Property < ApplicationRecord
  validates :property, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
  has_many :station, dependent: :destroy
  accepts_nested_attributes_for :station
end