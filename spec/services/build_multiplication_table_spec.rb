require 'rails_helper'

describe Services::BuildMultiplicationTable do
  subject { described_class.new }

  describe 'process' do
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    # (prime, n, primes, grid)
    it 'returns response when primes is provided' do
      expect(subject.process(2, 1, [2], "|       |     2 |\n")).to eq(
        "|       |     2 |\n|     2 |     4 |\n"
      )
      expect(subject.process(2, 2, [2, 3], "|       |     2 |     3 |\n")).to eq(
        "|       |     2 |     3 |\n|     2 |     4 |     6 |\n"
      )
      expect(subject.process(3, 2, [2, 3], "|       |     2 |     3 |\n")).to eq(
        "|       |     2 |     3 |\n|     3 |     6 |     9 |\n"
      )
    end
  end
end
