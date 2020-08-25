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
