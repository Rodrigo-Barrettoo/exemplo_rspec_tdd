describe 'Calsses' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
    expect("").to be_an(String)
    expect("").to be_a(String)
  end
end
