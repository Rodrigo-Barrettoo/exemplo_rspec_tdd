require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Barretin"
    pessoa.idade = 20

    expect(pessoa).to  have_attributes(nome: "Barretin", idade: 20)
  end
end
