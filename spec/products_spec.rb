require 'products'

describe '.single_product' do
  it 'multiplies all values of an array' do
    values = [2, 10, 3, 5]
    expect(single_product(values)).to eq 2*10*3*5
  end

  it 'multiplies all values of an array except the value at specified index' do
    values = [2, 1, 3, 5]
    index = 1
    expect(single_product(values, except_at: index)).to eq 2*3*5
  end
end

describe '.cross_product' do
  it 'raises an error when arguments do not have the same size' do
    values = [1]
    indices = [1, 2]
    expect { cross_product(values, indices) }.to raise_error(ArgumentError, 'Arguments do not have the same size')
  end

  it 'returns array of single products' do
    values = [2, 1, 3, 5]
    indices = [1, 2, 0, 3]
    expect(cross_product(values, indices)).to eql [2*3*5, 2*1*5, 1*3*5, 2*1*3]
  end
end
