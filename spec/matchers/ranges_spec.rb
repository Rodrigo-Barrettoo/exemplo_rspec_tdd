describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2,5)
  end

  it { is_expected.to cover(2) }
  it { is_expected.to cover(2,5) }
end
