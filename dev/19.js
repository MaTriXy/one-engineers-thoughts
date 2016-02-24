
var fs = require('fs');

var notes = {
  2004: 'Year I went to college',
  1510: '1511 Hernan cortez expedition',
  1491: '1492 Columbus discovers america',
  1795: 'French consitution/revolution',
  1776: 'American Revolution',
  1601: 'The company received a Royal Charter from Queen Elizabeth on 31 December 1600',
  313: "In 313, he met Licinius in Milan to secure their alliance by the marriage of Licinius and Constantine's half-sister Constantia. During this meeting, the emperors agreed on the so-called Edict of Milan,[192] officially granting full tolerance to Christianity and all religions in the Empire",
  1643: "Isaac Newton born December 25, 1642",
  1985: "Year before I was born",
  1909: "Largest oil spill in history, in California",
  1928: "Year before great depression (1929 - 1939)",
  1966: "On June 16, 1966, Black Power slogan begins"
};

var year = 2023;
var tock = 1;
var size = 13;
// known
var noun = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 17, 19 ];
var root = [ 'year' ].concat(noun.map(draw)).join('');
var text = [ root ];

while (year > -8000) {
  // actualized
  var verb = noun.map(function(note){ return draw(tock % note); });
  if (notes[year]) verb.push('   ' + notes[year]);

  var tick = [ year ].concat(verb).join('');
  text.push(tick);
  year = year - size;
  tock++;
}

fs.writeFileSync('dev/19.csv', text.join('\n'));

function draw(text) {
  text = String(text)
  if (text.length == 1) text = '    ' + text;
  else text = '   ' + text;
  return text;
}
