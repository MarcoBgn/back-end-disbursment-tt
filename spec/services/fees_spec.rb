require 'rails_helper'

RSpec.describe Fees, type: :service do

 it "Provides a singleton class for fees" do
   expect(Fees.instance.standard_uk).to eq 3.99
 end

 it "Stores different kind of fees" do
   expect(Fees.instance.standard_eu).to eq 6.98
 end
end
