require 'rails_helper'

RSpec.describe BluePrintItem, type: :model do
  it {is_expected.to belong_to :shop}
end
