require 'rails_helper'

RSpec.describe Shopper, type: :model do
  it {is_expected.to have_attribute :name}
  it {is_expected.to have_one :trolley}
end
