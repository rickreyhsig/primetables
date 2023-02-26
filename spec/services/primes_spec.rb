require 'rails_helper'

describe Services::Primes do
  subject { described_class.new(n) }

  describe 'process' do
    let(:n) { nil }
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'when n is less than one' do
      expect { subject.process(0) }.to raise_error('N should be at least 1')
    end

    it 'returns response when number is provided' do
      expect(subject.process(5)).to eq([2,3,5])
      expect(subject.process(30)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
end
