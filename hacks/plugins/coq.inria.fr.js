
function getTactics() {
  var statements = [];
  query('.li-indexenv').forEach(function(el){
    var name = el.textContent.split(',')[0].trim();
    var link = el.querySelector('a');
    var docs = link ? link.getAttribute('href') : null;
    var statement = Statement('tactic', name).nest(Statement('docs', docs));
    statements.push(statement);
  });
  return statements;
}

capture(getTactics);
