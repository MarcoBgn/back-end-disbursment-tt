require 'rails_helper'

RSpec.describe Shop, type: :model do
  it {is_expected.to have_many :blue_print_items}
end
