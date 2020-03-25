class Subset

  def smallest_subset_length(set)
  
    frequency_hash = Hash.new(0)
    indice_hash = Hash.new { |hash, key| hash[key] =[] } # Default value = array
    
    # Count number frequency and store each numbers indices
    set.each_with_index { |num, index|
      frequency_hash[num] += 1
      indice_hash[num] << index
    }
    
    # Find max frequency values and subset length
    max_frequency = frequency_hash.values.max
    subset_length = set.length + 1
  
  
    # Collect keys from high frequency values
    high_frequency_keys = []
    frequency_hash.each { |key, value| 
      high_frequency_keys << key if value == max_frequency 
    }
  
    # Find the smallest subset length
    high_frequency_keys.each { |key|
      key_index_array = indice_hash[key]
      subset = key_index_array[-1] - key_index_array[0]
      subset_length = subset < subset_length ? subset : subset_length
    }
     return subset_length + 1
   
  end
end
