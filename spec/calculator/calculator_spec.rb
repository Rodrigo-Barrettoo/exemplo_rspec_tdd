require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new() }

  context "#div" do
    it 'divided by 0' do
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{calc.div(3, 0)}.to raise_error('divided by 0')
      expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{calc.div(3, 0)}.to raise_error(/divided/)
    end
  end

  context "#sum" do
    it 'positive numbers' do
      result = calc.sum(5, 9)
      expect(result).to eq(14)
    end

    it 'negative numbers' do
      result = calc.sum(-5, -9)
      expect(result).to eq(-14)
    end
  end
end
