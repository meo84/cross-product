def single_product(values, options = {})
  temp_values = values.dup

  index = options[:except_at]
  temp_values.delete_at(index) unless index.nil?

  temp_values.reduce(:*)
end
