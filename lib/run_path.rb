class RunPath

  def lowest_visited_path(path, runs)

    positions = Hash.new 0
  
    runs.each_with_index do |run_start, index|
      run_end = runs[index + 1]
      start_path_index = path.index(run_start)
      end_path_index = path.index(run_end)
  
      unless run_end == nil 
        if start_path_index < end_path_index 
          path[start_path_index..end_path_index].each do |number|
          positions[number] += 1
          end
        else
          start_path_index.downto(end_path_index).each do |number|
          positions[number] += 1
          end
        end
      end
    end
    return positions.key(positions.values.max)
  end
end
