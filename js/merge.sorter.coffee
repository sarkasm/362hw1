class MergeSorter
  if global? then module.exports = global.MergeSorter = MergeSorter

  constructor: ->

  _merge: (nums, low, high) ->
    copy = []
    size = high - low + 1
    middle = 1 + Math.floor((low + high) / 2)
    front1 = low
    front2 = middle
    for i in [0..size - 1] by 1
      if front2 > high or (front1 < middle and nums[front1] < nums[front2])
        copy.push nums[front1]
        front1++
      else
        copy.push nums[front2]
        front2++

    for k in [0..size - 1] by 1
      nums[low+k] = copy[k]

    nums

  _mergeSort: (nums, low, high) ->
    if low < high
      middle = Math.floor((low + high) / 2)
      nums = @_mergeSort nums, low, middle
      nums = @_mergeSort nums, middle + 1, high
      nums = @_merge nums, low, high
    nums

  sort: (nums) ->
    nums = @_mergeSort nums, 0, nums.length - 1


# var time_this = function(cb){
#     var time_start = new Date().getTime();
#     cb();
#     return new Date().getTime() - time_start;

# }

# var foobar = function(){
#     for(var i = 0; i < 55000; i++){
#         console.log("Being Timed");
#     }
# }

# alert(time_this(foobar));

