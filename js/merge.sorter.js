// Generated by CoffeeScript 1.4.0
var MergeSorter;

MergeSorter = (function() {

  if (typeof global !== "undefined" && global !== null) {
    module.exports = global.MergeSorter = MergeSorter;
  }

  function MergeSorter() {}

  MergeSorter.prototype._merge = function(nums, low, high) {
    var copy, front1, front2, i, k, middle, size, _i, _j, _ref, _ref1;
    copy = [];
    size = high - low + 1;
    middle = 1 + Math.floor((low + high) / 2);
    front1 = low;
    front2 = middle;
    for (i = _i = 0, _ref = size - 1; _i <= _ref; i = _i += 1) {
      if (front2 > high || (front1 < middle && nums[front1] < nums[front2])) {
        copy.push(nums[front1]);
        front1++;
      } else {
        copy.push(nums[front2]);
        front2++;
      }
    }
    for (k = _j = 0, _ref1 = size - 1; _j <= _ref1; k = _j += 1) {
      nums[low + k] = copy[k];
    }
    return nums;
  };

  MergeSorter.prototype._mergeSort = function(nums, low, high) {
    var middle;
    if (low < high) {
      middle = Math.floor((low + high) / 2);
      nums = this._mergeSort(nums, low, middle);
      nums = this._mergeSort(nums, middle + 1, high);
      nums = this._merge(nums, low, high);
    }
    return nums;
  };

  MergeSorter.prototype.sort = function(nums) {
    return nums = this._mergeSort(nums, 0, nums.length - 1);
  };

  return MergeSorter;

})();
