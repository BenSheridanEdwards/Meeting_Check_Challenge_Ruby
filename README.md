# Meeting Checker - Ruby Challenge

## Challenge Description

Your company has built an in-house calendar tool, and they want you to add a feature to see the times in a day when everyone is available. 

Every team's meetings are stored as an array of integers, [start_time, end_time]. The integers respresent the number of 30-minute blocks past 9:00am.

Create a Ruby class called MeetingChecker, that has a method called availability which accepts the meetings array as an argument, and returns an array of condensed ranges. 

For example, given: 

```
[[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
```

Your method would return:

```
[[0, 1], [3, 8], [9, 12]]
```

### Things to keep in mind - Edge cases 

- Do not assume the meetings are in order. As the meetings times are coming from multiple teams.

- Your solution should be efficient even when we can't put an upper bound on the numbers in our time ranges. Like if we wanted to use Unix timestamps. 

- Meetings that 'touch' like this [[1, 2], [2, 3]] should be merged.

- When a meeting starts before and ends after another meeting, it should correctly subsume that meeting. 

### Solution

![MeetingChecker](https://github.com/BenSheridanEdwards/Meeting_Check_Challenge_Ruby/blob/master/media/MeetingCheckerRubyCode.png)

### Unit Tests

![MeetingCheckerSpec](https://github.com/BenSheridanEdwards/Meeting_Check_Challenge_Ruby/blob/master/media/MeetingCheckerRSpecTesting.png)
