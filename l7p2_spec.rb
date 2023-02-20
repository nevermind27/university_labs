# frozen_string_literal: true

require 'spec_helper'
require './l7p2'
describe Okr do
  it { expect(described_class).to be < Point }
  it { expect(described_class.superclass).to be Point }
end
describe Point do
  subject(:instance) { Point.new(0, 1) }
  it { expect(described_class).to be Point }
  it { expect(instance.dekart_x).to eql(1.0) }
end
