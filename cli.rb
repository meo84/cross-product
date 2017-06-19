require_relative 'lib/products'

result = cross_product(eval(ARGV[0]), eval(ARGV[1]))
puts result.to_s
