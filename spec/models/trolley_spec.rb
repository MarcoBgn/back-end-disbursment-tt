require 'rails_helper'

RSpec.describe Trolley, type: :model do
  it {is_expected.to have_many :items}
  it {is_expected.to belong_to :shopper}
end
