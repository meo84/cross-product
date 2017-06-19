def cross_product(values, indices)
  raise ArgumentError, 'Arguments do not have the same size' unless values.size == indices.size

  cross_product = []
  indices.each { |index| cross_product << single_product(values, except_at: index) }
  cross_product
end

def single_product(values, options = {})
  temp_values = values.dup

  index = options[:except_at]
  temp_values.delete_at(index) unless index.nil?

  temp_values.reduce(:*)
end
