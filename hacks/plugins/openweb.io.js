
/**
 * Get all CSS content.
 */

function collect() {
  var index = 0;
  var properties = [];

  list('section > ul > li').forEach(item);

  function item(li) {
    var id = 'sul' + index++;
    li.setAttribute('id', id);
    var code = document.querySelector('#' + id + ' > code');
    if (!code) return;
    var random = code.innerHTML.trim();
    var links = list('#' + id + ' > a');
    var sources = [];

    links.forEach(function(link){
      var text = link.textContent.trim().replace(/[\[\]]/ig, '');
      var href = link.getAttribute('href');

      sources.push({
        title: text,
        url: href
      });
    });

    var property = {
      name: random,
      sources: sources
    };

    list('#' + id + ' > ul > li').forEach(item);

    properties.push(property);
  }

  function format(properties) {
    var str = '';
    properties.forEach(function(prop){
      str += '\nproperty ' + prop.name + '\n';
      prop.sources.forEach(function(source){
        str += '  source\n';
        str += '    title ' + source.title + '\n';
        str += '    url ' + source.url + '\n';
      });
    });
    return str;
  }

  var str = format(properties);
  copy(str);
}

collect();
