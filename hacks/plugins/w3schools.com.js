
function table() {
  var headers = [];
  var result = [];
  list('table').forEach(function(el){
    var id = identify(el);

    // headers
    list(id + ' > tbody > tr > th').forEach(function(el){
      var header = (el.textContent || el.innerHTML).trim();
      headers.push(header);
    });

    // headers and body
    list(id + ' > tbody > tr').forEach(function(row){
      // rows
      var id = identify(row);
      var data = {};
      list(id + ' > td').forEach(function(cell, i){
        var id = identify(cell);
        var header = headers[i];
        var title = cell.textContent.trim().replace(/[\[\]]/gi, '');
        data[header] = title;
      });

      result.push(data);
    });
  });

  function format() {
    var str = '';
    result.forEach(function(data){
      str += '\n\nrecord'
      for (var header in data) {
        var value = data[header];
        str += '\n  ' + header;
        str += ' ' + data[header];
      }
    });
    return str;
  }

  copy(format());
}

setTimeout(table, 500);
