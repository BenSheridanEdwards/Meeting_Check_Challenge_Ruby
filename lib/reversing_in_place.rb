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
    
    reverse_characters!(message, 0, message.length - 1)

    current_word_start_index = 0

    (0..message.length).each do |index|

      next unless index == message.length || message[index] == ' '

      reverse_characters!(message, current_word_start_index, index - 1)

      current_word_start_index = index + 1

    end
    message
  end

private

  def reverse_characters!(message, left_index, right_index)

    while left_index < right_index
      message[left_index], message[right_index] =
        message[right_index], message[left_index]

      left_index += 1
      right_index -= 1
    end
  end
end
