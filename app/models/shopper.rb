class Shopper < ApplicationRecord
  validates :name, uniqueness: true
  has_one :trolley
end
