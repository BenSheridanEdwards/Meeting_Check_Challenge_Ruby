class CookieOrders

  def merge_arrays(my_array, alices_array)
    # Determine the size of the output array and create a new array with that length
    merged_array_size = my_array.length + alices_array.length
    merged_array = Array.new(merged_array_size)

    current_index_alices = 0
    current_index_mine = 0
    current_index_merged = 0

    while current_index_merged < merged_array_size

      # Case: My array is exhausted

      if current_index_mine >= my_array.length
        merged_array[current_index_merged] = alices_array[current_index_alices]
        current_index_alices += 1

      # Case: Alice's array is exhausted
      elsif current_index_alices >= alices_array.length
        merged_array[current_index_merged] = my_array[current_index_mine]
        current_index_mine += 1

      # Case: My item is next
      elsif my_array[current_index_mine] < alices_array[current_index_alices]
        merged_array[current_index_merged] = my_array[current_index_mine]
        current_index_mine += 1

      # Case: Alice's item is next
      else
        merged_array[current_index_merged] = alices_array[current_index_alices]
        current_index_alices += 1
      end

      current_index_merged += 1
    end

    merged_array
  end
end
