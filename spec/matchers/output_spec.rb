describe 'Matchers output' do
  it { expect{puts 'Barretin'}.to output.to_stdout }
  it { expect{print 'Barretin'}.to output('Barretin').to_stdout }
  it { expect{puts 'Barretin'}.to output(/Barretin/).to_stdout }

  it { expect{warn 'Barretin'}.to output.to_stderr }
  it { expect{warn 'Barretin'}.to output("Barretin\n").to_stderr }
  it { expect{warn 'Barretin'}.to output(/Barretin/).to_stderr }
end
