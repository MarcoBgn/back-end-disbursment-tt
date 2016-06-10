class Trolley < ApplicationRecord
  belongs_to :shopper
  has_many :items

  def total_price
    self.items.map {|item| item.price}.reduce(:+) || 0 
  end
end
