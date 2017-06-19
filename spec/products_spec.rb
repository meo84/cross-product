require 'products'

describe 'Single product' do
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
