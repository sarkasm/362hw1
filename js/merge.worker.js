importScripts('merge.sorter.js');
importScripts('util.js');


self.addEventListener('message', function(e) {
  var input = e.data;
  var input_array = input.data;
  var pos = input.pos;
  var elements = input.elements;

  var timing = self.do_sort(input_array);
  var payload= {
    time: timing,
    pos: pos,
    elements: elements
  }

  self.postMessage(payload);
}, false);



self.do_sort = function(input_array){
  // console.log(input_array);
  var ms = new MergeSorter();
  var time = time_this(function(){return ms.sort(input_array)});
  return time;
}

