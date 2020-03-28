class InPlace

  def reversing(data)
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

end