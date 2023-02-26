require 'rails_helper'

describe Services::PrintGrid do
  subject { described_class.new }

  describe 'process' do
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'when n is less than one' do
      expect { subject.process(0) }.to raise_error('N should be at least 1')
    end

    it 'when n is 1' do
      grid = "|       |"
      expect(subject.process(1)).to eq(grid)
    end
  end
end
