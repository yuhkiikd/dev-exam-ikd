class Property < ApplicationRecord
  has_many :station, dependent: :destroy
  accepts_nested_attributes_for :station
end