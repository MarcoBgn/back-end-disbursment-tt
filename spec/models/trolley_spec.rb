require 'rails_helper'

RSpec.describe Trolley, type: :model do
  it {is_expected.to have_many :items}
end
