# my_array     = [3, 4, 6, 10, 11, 15]
# alices_array = [1, 5, 8, 12, 14, 19]

def merge_lists(my_array, alices_array)
  # Combine the sorted lists into one large sorted list
  merged_array_size = my_list.length + alices_list.length
  merged_array = Array.new(merged_array_size)

  current_index_alices = 0
  current_index_mine = 0
  current_index_merged = 0

  while current_index_merged < merged_array_size

    is_my_array_exhausted = current_index_mine >= my_array.length
    is_alices_array_exhausted = current_index_alices >= alices_array.length

    # Case: next comes from my array.
    # My array must not be exhausted, and EITHER:
    # 1) Alice's array IS exhausted, or
    # 2) the current element in my array is less
    #    than the current element in Alice's array.
    if !is_my_array_exhausted && (is_alices_array_exhausted ||
       (my_array[current_index_mine] < alices_array[current_index_alices]))

      merged_array[current_index_merged] = my_array[current_index_mine]
      current_index_mine += 1

    # Case: next comes from Alice's array.
    else
      merged_array[current_index_merged] = alices_array[current_index_alices]
      current_index_alices += 1
    end

  current_index_merged += 1
  end

  merged_array
end
