# Ruby Data Structure Challenges - Arrays & Strings

## Meeting Checker

### Challenge Description

Your company has built an in-house calendar tool, and they want you to add a feature to see the times in a day when everyone is available. 

Every team's meetings are stored as an array of integers, [start_time, end_time]. The integers respresent the number of 30-minute blocks past 9:00am.

Create a Ruby class called MeetingChecker, that has a method called availability which accepts the meetings array as an argument, and returns an array of condensed ranges. 

For example, given: 

```
[[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
```

Your method should return:

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

<br>

## Reversing In-Place

### Description 
Write a method that takes an array or string and reverses the elements in place.

For example, given a string: 

```
"ABCDE"
```

Your method should return:

```
"EDCBA"
```

Also, when given an array: 
```
["A", "B", "C", "D", "E"]
```

Your method should return:
```
["E", "D", "C", "B", "A"]
```

### Things to keep in mind

- An in-place method modifies data structures or objects outside of its own stack frame. Because of this, the changes made by the method remain after the call completes.
  - In-place algorithms are sometimes called destructive, since the original input is "destroyed" (or modified) during the method call.
  - Careful: "In-place" does not mean "without creating any additional variables!" Rather, it means "without creating a new copy of the input." In general, an in-place method will only create additional variables that are O(1) space.
  
- An out-of-place method doesn't make any changes that are visible to other methods. Usually, those methods copy any data structures or objects before manipulating and changing them.

- The elements is the string/array input will be letters, numbers or a mixture of both.

### Solution

![Reversing Code](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/ReversingRubyCode.png)

### Unit Tests

![Reversing Testing](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/ReversingRSpecTesting.png)
