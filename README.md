# Ruby Data Structure Challenges

Table of Contents 

### [Arrays]()

[Meeting Checker](#Meeting-Checker) | [Smallest Subset Length](#Smallest-Subset-Length) | [Girl Scout Cookie Orders](#Girl-Scout-Cookie-Orders)

### [Strings]()

[Reversing In-Place](#Reversing-In-Place)

### [Hashes]()

## <a name="Meeting-Checker">Meeting Checker</a>

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

## <a name="Reversing-In-Place">Reversing In-Place</a>

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

## Run Path

### Description 

Given the length of a path and a set of back and forth runs on this path, return the position on the path that is visited most often at the end of all runs. If there are multiple positions that meet this criterion, return the lowest position. 

For example, when given:
```
path = [1, 2, 3, 4, 5, 6, 7, 8, 9]
runs = [2, 7, 3, 9, 1, 5]

method(path, runs)
```

Your method should return:
```
3
```
### Explaination

- The set of runs translates to: start at 2, run to 7; start at 7, run to 3; start at 3, run to 9; start at 9, run to 1; start at 1, run to 5. 
- Note that each position is visited once when the run ends there and once when the run starts there, so for example when you run from 2 to 7 and then from 7 to 3, you have visited 7 twice. 
- Given the above example, positions 3, 4 and 5 would all have been visited 5 times, which is the largest number of visits, but the program should return the lowest such positions, which is 3.

### Solution

![RunPath Code](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/RunPathRubyCode.png)

![RunPath Editor](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/RunPathRubyEditor.png)

### Unit Tests

![RunPath Testing](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/RunPathRSpecTesting.png)

## <a name="Smallest-Subset-Length">Smallest Subset Length</a>

### Description

For a set of numbers, the degree of the set is the largest number of occurrences of the same element. In the given example below, the degree is 3 as both element 1 and element 2 occur 3 times each.

Given a set of numbers, return the length of the smallest subset that has the same degree as the original set.

For example, for a given set: 
```
Set = [1, 2, 2, 2, 3, 4, 1, 5, 1, 6]
```

Your method should return:
```
3
```

### Explaination

The two subsets with the same degree as the original set are {1, 2, 2, 2, 3, 4, 1, 5, 1} and {2, 2, 2}. The first subset is 9 elements long and the second one is 3 elements long, so the program should return 3.

### Solution

![Smallest Subset Length Code](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/SmallestSubsetLengthCode.png)

### Unit Tests

![Smallest Subset Length Testing](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/SmallestSubsetLengthRSpecTesting.png)

## <a name="Girl-Scout-Cookie-Orders">Girl Scout Cookie Orders</a>

### Description

In order to win the prize for most cookies sold, my friend Alice and I are going to merge our Girl Scout Cookies orders and enter as one unit.

Each order is represented by an "order id" (an integer).

We have our lists of orders sorted numerically already, in arrays. Write a method to merge our arrays of orders into one sorted array.

For example: 

```
my_array     = [3, 4, 6, 10, 11, 15]
alices_array = [1, 5, 8, 12, 14, 19]

merge_arrays(my_array, alices_array)
```

Your method should output: 
```
[1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]

```

### Explaination

We could concatinate the arrays together, then sort the result: 

![Girl Scout Cookie Order Simple Solution](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/CookieOrdersRubySimpleCode.png)

But the time cost would be O(n lg n), where n is the total length of our output array, the sum of the length of our inputs. 

We can do better than this though, as we're not taking advantage of the face the input arrays are *already sorted*. 

We know since our arrays are sorted, the smallest item for each input array will be at the 0th index. So the smallest item overall will be a the 0th index of one of our input arrays!

If we push the smallest number at the 0th index from both arrays into our merged arrays, we can always use the 0th index to find our smallest number between both arrays. 

But we have a few problems when we consider our Edge cases: 

1. What if one or both our input arrays are 1 element or less? 
2. What if one of our input arrays is longer than the other?
3. What if one of our arrays runs out of elements before we're done merging the other?

For all these edge cases, there will be a point when the 0th value on one of our input arrays will be nil. So we'll get a NoMethodError for calling 'less than' on nil - Or an Argument Error for calling 'less than' on an integer but passing nil as an argument. 

So when we write our conditional statements, we'll have to have 4 cases, 2 to check which item is next from the 0th index of each array, and 2 to check if either array is exhausted.

### Solution

![Girl Scout Cookies Code](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/CookieOrdersRubyCodeDRY.png)

### Unit Tests

![Girl Scout Cookies Tests](https://github.com/BenSheridanEdwards/Ruby_Data_Structure_Challenges/blob/master/media/CookieOrdersRSpecTesting.png)
