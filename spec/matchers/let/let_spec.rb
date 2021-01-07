$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # 1ª vez é carregado
    expect(count).to eq(1) # 2ª vez fica em cache
  end

  it 'não é chacheado entre os testes' do
    expect(count).to eq(2)
  end
end
