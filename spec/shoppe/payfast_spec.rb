describe Shoppe::Payfast do
  it 'is a module' do
    expect(Shoppe::Payfast).to be_a Module
  end

  it 'has a version number' do
    expect(Shoppe::Payfast::VERSION).not_to be nil
  end

  describe '#merchant_id' do
    xit 'returns the merchant id from shoppe settings' do
    end
  end
  describe '#merchant_key' do
    xit 'returns the merchant key from shoppe settings' do
    end
  end
  describe '#currency' do
    xit 'returns the merchant id from shoppe settings' do
    end
  end

  context '#setup' do
    xit 'adds a shoppe settings group for payfast' do
    end
  end
end
