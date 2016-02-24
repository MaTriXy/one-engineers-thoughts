
examples increment
  increment letter
    return String.fromCharCode(c.charCodeAt(0) + 1);

max
  function maxOf(counts) {
    return Math.max.apply(Math, counts);
  }

min
  function minOf(counts) {
    return Math.min.apply(Math, counts);
  }

sort
  by number
    a.sort(function(a,b){return a - b})

clone
  date
    var date = new Date();
    var copiedDate = new Date(date.getTime());

calculate
  width text
    function getTextWidth(text, font) {
      // re-use canvas object for better performance
      var canvas = getTextWidth.canvas || (getTextWidth.canvas = document.createElement("canvas"));
      var context = canvas.getContext("2d");
      context.font = font;
      var metrics = context.measureText(text);
      return metrics.width;
    };

test is power of 2
  input n
    n !== 0 && (n & (n - 1)) === 0

source sine, http://stackoverflow.com/questions/2284860/how-does-c-compute-sin-and-other-math-functions

source quantum, https://github.com/garrison/jsqis

source cool debugger
  http://www.quantumplayground.net/#/playground/5191954035900416
