
function table() {
  var headers = [];
  var result = [];
  list('table').forEach(function(el){
    var id = identify(el);
    console.log(id + ' > thead > tr > th')
    // headers
    list(id + ' > thead > tr > th').forEach(function(el){
      var header = el.textContent.trim();
      headers.push(header);
    });

    // rows
    list(id + ' > tbody > tr').forEach(function(row){
      var id = identify(row);
      var data = {};
      list(id + ' > td').forEach(function(cell, i){
        var id = identify(cell);
        var header = headers[i];
        var title = cell.textContent.trim().replace(/[\[\]]/gi, '');
        var links = list(id + ' > a');
        if (!links.length) {
          data[header] = title;
          return;
        }

        data[header] = [];
        links.forEach(function(link){
          var url = link.getAttribute('href');
          data[header].push({
            title: title,
            url: url
          });
        });
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
        if ('string' == typeof data[header]) {
          str += '\n  ' + header;
          str += ' ' + data[header];
        } else {
          if (Array.isArray(value)) {
            value.forEach(function(item){
              str += '\n  ' + header;
              for (var key in item) {
                str += '\n    ' + key + ' ' + item[key];
              }
            });
          } else {
            str += '\n  ' + header;
            for (var key in value) {
              str += '\n    ' + key + ' ' + value[key];
            }
          }
        }
      }
    });
    return str;
  }

  copy(format());
  console.log(result.length)
}

setTimeout(table, 500);
