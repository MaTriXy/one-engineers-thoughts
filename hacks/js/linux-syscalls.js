
var headers = [
  'eax',
  'Name',
  'Source',
  'ebx',
  'ecx',
  'edx',
  'esx',
  'edi'
];

var result = [];
[].slice.call(document.querySelectorAll('#mytable tr')).forEach(function(row){
  var data = {};
  [].slice.call(row.querySelectorAll('td')).forEach(function(cell, i){
    data[headers[i]] = cell.textContent.trim().replace(/-/g, '');
  });
  result.push(data);
});

console.log(result.map(print).join('\n'));

function print(data) {
  var str = [
    'syscall ' + data.eax,
    '  name ' + data.Name
  ];
  if (data.ebx) str.push('  input ' + data.ebx);
  if (data.ecx) str.push('  input ' + data.ecx);
  if (data.edx) str.push('  input ' + data.edx);
  if (data.esi) str.push('  input ' + data.esi);
  if (data.edi) str.push('  input ' + data.edi);

  return str.join('\n') + '\n';
}
