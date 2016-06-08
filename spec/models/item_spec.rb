require 'rails_helper'

RSpec.describe Item, type: :model do
  it {is_expected.to have_attribute :name}
  it {is_expected.to have_attribute :price}
end
