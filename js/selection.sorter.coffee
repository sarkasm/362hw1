
class SelectionSorter
  if global? then module.exports = global.SelectionSorter = SelectionSorter

  constructor: () ->

  sort: (nums) ->
    @_sort nums, 0, nums.length - 1
    nums

  _sort: (nums, low, high) ->
    for i in [low..high] by 1
      indexOfMin = i
      for j in [i+1 .. high] by 1
        indexOfMin = j if nums[j] < nums[indexOfMin]
      temp = nums[i]
      nums[i] = nums[indexOfMin]
      nums[indexOfMin] = temp
    nums
