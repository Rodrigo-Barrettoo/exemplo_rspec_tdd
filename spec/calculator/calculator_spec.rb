require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new() }

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
