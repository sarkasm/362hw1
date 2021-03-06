var time_this = function(cb, do_verify){
    var time_start = new Date().getTime();
    var result = cb();
    var time_diff = new Date().getTime() - time_start;
    if(do_verify && !verify_sort(result)){
      throw "SORT FAILED!";
    }
    return time_diff;
};

var verify_sort = function(the_array){
  var len = the_array.length;
  var sorted = true;
  for(var i = 1; i < len; i++){
    if(the_array[i - 1] > the_array[i]){
      sorted = false;
      break;
    }
  }
  return sorted;
}
