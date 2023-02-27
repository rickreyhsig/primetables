require 'rails_helper'

describe Services::BuildInitialGridLine do
  subject { described_class.new }

  describe 'process' do
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'returns response when primes is provided' do
      expect(subject.process([2,3,5])).to eq("|       |     2 |     3 |     5 |\n")
      expect(subject.process([2,3,5,7,11,13,17,19])).to eq(
        "|       |     2 |     3 |     5 |     7 |    11 |    13 |    17 |    19 |\n"
      )
    end
  end
end
