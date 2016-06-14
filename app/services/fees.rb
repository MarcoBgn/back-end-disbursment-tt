require 'singleton'

class Fees
  include Singleton

  attr_reader :standard_uk

  def initialize(standard_uk = 3.99)
    @standard_uk = standard_uk
  end

  def standard_eu
    @standard_uk + 2.99
  end

  def priority_uk
    @standard_uk + 4.99
  end
end
