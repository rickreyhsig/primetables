require 'rails_helper'

describe Services::SpacedString do
  subject { described_class.new }

  describe 'process' do
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'returns response when val is provided' do
      expect(subject.process(5)).to      eq('|     5 ')
      expect(subject.process(25)).to     eq('|    25 ')
      expect(subject.process(257)).to    eq('|   257 ')
      expect(subject.process(2579)).to   eq('|  2579 ')
      expect(subject.process(25791)).to  eq('| 25791 ')
    end
  end
end
