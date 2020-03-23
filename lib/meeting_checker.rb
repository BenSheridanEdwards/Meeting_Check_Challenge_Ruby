class MeetingChecker

  def availability(meetings)
    
    sorted_meetings = meetings.sort! # Sort meetings so meetings that need to be merged are next to each other

    merged_meetings = [sorted_meetings[0]] # Place the first meeting in the merged meetings array

    sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end| # Go through each meeting sequentially

      last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1] # Pull out the last merged meetings start and end time

      if current_meeting_start <= last_merged_meeting_end
 
        merged_meetings[-1] = last_merged_meeting_start, [last_merged_meeting_end, current_meeting_end].max

      else

        merged_meetings << [current_meeting_start, current_meeting_end]

      end
    end
    merged_meetings
  end
end