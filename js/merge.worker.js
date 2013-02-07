importScripts('merge.sorter.js');
importScripts('util.js');


self.addEventListener('message', function(e) {
  var input = e.data;
  var input_array = input.data;
  var pos = input.pos;
  var elements = input.elements;
  var verify_sort = input.verify_sort;

  var result = self.do_sort(input_array, verify_sort);

  var payload= {
    time: result.time,
    pos: pos,
    elements: elements,
    sorted_elements: result.sorted
  }

  self.postMessage(payload);

}, false);



self.do_sort = function(input_array, verify_sort){
  // console.log(input_array);
  var ms = new MergeSorter();
  var sorted;
  var time = time_this(function(){
    sorted = ms.sort(input_array);
    return sorted}, verify_sort
    );

  return {
          time: time,
          sorted: sorted
        };
}

