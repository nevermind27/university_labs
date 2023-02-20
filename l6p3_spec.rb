# frozen_string_literal: true

require 'spec_helper'
require './l6p3'
describe Integral do
  subject(:instance) { Integral.new }
  context 'With a= 0 b=1 lambda = (Math::E**x) / (x + 1) ' do
    it 'should be 1.126 ' do
      expect(instance.intprg(0.0, 1.0) { |x| (Math::E**x) / (x + 1) }).to be_between(1.125, 1.127).exclusive
      expect(instance.intprg(0.0, 1.0, ->(x) { (Math::E**x) / (x + 1) })).to be_between(1.125, 1.127).exclusive
    end
  end
end
