class Trolley < ApplicationRecord
  belongs_to :shopper
  has_many :items
end
