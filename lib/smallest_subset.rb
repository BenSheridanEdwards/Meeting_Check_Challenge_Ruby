class Subset

  def smallest_degree(sub1, sub2)
    sub1count = Hash.new 0
    sub2count = Hash.new 0
    sub1.each { |num| sub1count[num] += 1 }
    sub2.each { |num| sub2count[num] += 1 }
    sub1count.each_pair { |key1, value1|
      sub2count.each_pair {|key2, value2|
        return value1 if key1 == key2 && value1 == value2
      }
    }
  end
end