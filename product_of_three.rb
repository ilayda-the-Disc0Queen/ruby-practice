def highest_product_of_three(array_of_ints)
  top_three_ints = array_of_ints.max(3)
  top_three_ints
  product = top_three_ints.reduce(:*)
end

p highest_product_of_three([1, 2, 3, 4])
p highest_product_of_three( [-10, -10, 1, 3, 2]) # should return 300 X
