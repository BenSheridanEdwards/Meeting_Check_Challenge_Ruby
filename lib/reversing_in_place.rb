class InPlace

  def reverse!(data)
    left_index = 0
    right_index = data.length - 1
    while left_index < right_index
      data[left_index], data[right_index] = \
      data[right_index], data[left_index]
      left_index += 1
      right_index -= 1
    end
    data
  end

  def reverse_words!(message)
    
  end


  # Helper method for reverse_words!

  def reverse_characters!(message, left_index, right_index)

    while left_index < right_index
      message[left_index], message[right_index] =
        message[right_index], message[left_index]

      left_index += 1
      right_index += 1
    end
  end
end
