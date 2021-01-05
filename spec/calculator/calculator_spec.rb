require 'calculator'

describe Calculator do
  it 'sum method for 2 numbers' do
    calc = Calculator.new

    result = calc.sum(5, 9)
    expect(result).to eq(14)
  end
end
