# spec/longest_consecutive_sequence_spec.rb
require 'spec_helper'
require 'longest_consecutive_sequence'

describe LongestConsecutiveSequence do
  before :all do
    puts "Running test over #{self.class.description} - Please refer to spec for more details"
  end

  let(:secuence) { LongestConsecutiveSequence.new([100, 4, 200, 201, 202, 203, 204, 38, 39, 40, 34, 33, 32, 35, 37, 36, 41, 205, 206, 207, 5, 9, 1,6, 101, 102, 103, 110, 104]) }
  let(:no_find_secuence) { LongestConsecutiveSequence.new([100, 4, 200, 1, 7, 10]) }
  let(:empty_secuence) { LongestConsecutiveSequence.new([]) }

  it "find a correct longest consecutive sequence" do
    expect(secuence.run).to be_equal(10)
  end

  it "single digits or 1 element secuence will return 1" do
    expect(no_find_secuence.run).to be_equal(1)
  end

  it "0 element secuence will raise an argument error" do
    expect { empty_secuence.run }.to raise_error(ArgumentError)
  end

end