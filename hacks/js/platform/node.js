
import fs from 'fs';

let heap = [];

export function readFile(path, encoding = utf8()) {
  return fs.readFileSync(path, encoding);
}

export function writeFile(path, content, encoding = utf8()) {
  fs.writeFileSync(path, content, encoding);
}

export function readMemory(location) {
  return heap[location];
}

export function writeMemory(location, value) {
  heap[location] = value;
}

export function* readUrl(url) {
  return superagent.get(url).end();
}

export function add(a, b) {
  return a + b;
}

export function subtract(a, b) {
  return a - b;
}

export function compare(a, b, relation) {
  switch (relation) {
    case 'more': return more(a, b);
    case 'less': return less(a, b);
  }
}

export function visit(name, collection) {

}

export function more(a, b) {
  return a > b;
}

export function less(a, b) {
  return a < b;
}

function utf8() {
  return 'utf-8';
}
