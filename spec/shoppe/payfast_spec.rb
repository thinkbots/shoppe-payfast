describe Shoppe::Payfast do
  it 'is a module' do
    expect(Shoppe::Payfast).to be_a Module
  end

  it 'has a version number' do
    expect(Shoppe::Payfast::VERSION).not_to be nil
  end
end
