require 'rails_helper'

describe Services::PrintGrid do
  subject { described_class.new }

  describe 'process' do
    let(:n) { nil }
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'when n is 1' do
      grid = "|       |     2 |\n"\
             "|     2 |     4 |\n"
      expect(subject.process(1)).to eq(grid)
    end
  end
end
