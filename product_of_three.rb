def highest_product_of_three(array_of_ints)
  absolute_array_of_ints = []
  array_of_ints.each do |number|
    absolute_array_of_ints << number.abs
  end
  absolute_array_of_ints
  top_three_ints = absolute_array_of_ints.max(3)
  top_three_ints
  product = top_three_ints.reduce(:*)
end

highest_product_of_three([1, 2, 3, 4])
highest_product_of_three([-10, -10, 1, 3, 2]) # should return 300 X
