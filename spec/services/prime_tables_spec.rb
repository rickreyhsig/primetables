require 'rails_helper'

describe Services::PrimeTables do
  subject { described_class.new }

  describe 'process' do
    it 'when no params are provided, an error is triggered' do
      expect { subject.process }.to raise_error(ArgumentError)
    end

    it 'returns response when number is provided' do
    end
  end
end
