require 'pessoa'

describe 'Atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = 'Sem nome!'
  #   puts ">>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts 'Antes'
    @pessoa = Pessoa.new

    teste.run # roda o teste

    @pessoa.nome = 'Sem nome!'
    puts ">>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = "Barretin"
    @pessoa.idade = 20

    expect(@pessoa).to  have_attributes(nome: "Barretin", idade: 20)
  end

  it 'have_attributes' do
    @pessoa.nome = "João"
    @pessoa.idade = 21

    expect(@pessoa).to  have_attributes(nome: "João", idade: 21)
  end
end
