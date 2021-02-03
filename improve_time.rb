def sort_scores(unsorted_scores, highest_possible_score)
  # Array of 0s at indices 0..highest_possible_score.
  p score_counts = [0] * (highest_possible_score + 1)

  # Populate score_counts.
  unsorted_scores.each do |score|
    score_counts[score] += 1
  end

  # Populate the final sorted array.
  sorted_scores = []

  # For each item in score_counts,
  highest_possible_score.downto(0) do |score|
    count = score_counts[score]
    # when the item occurs, i.e. count is one
    (0...count).each do
      # add score to the sorted array.
      sorted_scores << score
    end
  end

  sorted_scores
end

unsorted_scores = [1, 37, 89, 41, 65, 91, 53]
HIGHEST_POSSIBLE_SCORE = 100

p sort_scores(unsorted_scores, HIGHEST_POSSIBLE_SCORE)
# Returns [91, 89, 65, 53, 41, 37]

# AMAZON LIVE CODES

/*
Given an array of integers, and an integer value X,
write a function that returns true iff 2 elements sum to X.
*/
require 'set'

def find_odd_number(array)
    seen_numbers = Set.new
    array.each do |number|
        if seen_numbers.include?(number)
            seen_numbers.delete(number)
        else
            seen_numbers.push(number)
        end
    end
   p seen_numbers
end

def two_sum_to_x?(array_of_ints, x)
    set_of_ints = array_of_ints.to_set
    array_of_ints.any? do |first_number|
        second_number = x - first_number
        set_of_ints.include?(second_number)
    end
end

# two_sum_to_x?([1, 2, 4], 6) => true
