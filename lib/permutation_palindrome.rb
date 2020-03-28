require 'set'

class PermutationPalindrome

  def has_palindrome_permutation?(the_string)

   
    unpaired_characters = Set.new

    (0...the_string.length).each do |i|
      char = the_string[i]

      if unpaired_characters.include? char
        unpaired_characters.delete(char)
      else
        unpaired_characters.add(char)
      end
    end

    unpaired_characters.length <= 1
  end
end
