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

# REAL SOLUTION

def highest_product_of_3(array_of_ints)
  raise ArgumentError, "Less than 3 numbers given" if array_of_ints.length < 3

  highest = array_of_ints.first(2).max # of 1st 3 ints
  lowest =  array_of_ints.first(2).min
  highest_product_of_2 = array_of_ints[0] * array_of_ints[1]
  lowest_product_of_2  = array_of_ints[0] * array_of_ints[1]
  highest_product_of_3 = array_of_ints[0] * array_of_ints[1] * array_of_ints[2]

  # Walk through items, starting at index 2
  # (we could slice the array but that would use n space).
  array_of_ints.each_with_index do |current, index|
        next if index < 2

      # Do we have a new highest product of 3?
      # It's either the current highest,
      # or the current times the highest product of two,
      # or the current times the lowest product of two.
      highest_product_of_3 = [
        highest_product_of_3,
        current * highest_product_of_2,
        current * lowest_product_of_2
      ].max

      # Do we have a new highest product of two?
      highest_product_of_2 = [
        highest_product_of_2,
        current * highest,
        current * lowest
      ].max

      # Do we have a new lowest product of two?
      lowest_product_of_2 = [
        lowest_product_of_2,
        current * highest,
        current * lowest
      ].min

      # Do we have a new highest?
      highest = [highest, current].max

      # Do we have a new lowest?
      lowest = [lowest, current].min
      end

  highest_product_of_3
end
