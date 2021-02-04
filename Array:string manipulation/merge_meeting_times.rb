# [2, 3]  means Meeting from 10:00 to 10:30 am
# [6, 9]  means Meeting from 12:00 to 1:30 pm

def merge_ranges(meetings)
  # sort meetings by start time
  sorted_meetings = meetings.sort
  # at each step we can either merge the current meeting with the previous one
  # or we can't and the current meeting is put into merged_meetings
  merged_meetings = [sorted_meetings[0]]
  # p "sorted meetings #{sorted_meetings}"
  sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end|
    last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]

    if current_meeting_start <= last_merged_meeting_end
      merged_meetings[-1] = [
        last_merged_meeting_start,
        [last_merged_meeting_end, current_meeting_end].max
      ]
    else
      merged_meetings << [current_meeting_start, current_meeting_end]
    end
  end
  p merged_meetings
end

merge_ranges([[1, 3], [3, 6], [11, 12], [7, 11]])
# merge_ranges([[1, 5], [2, 4]])
