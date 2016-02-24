
/**
 * Module dependencies.
 */

import fs from 'fs'

/**
 * Create.
 */

export function create() {
  // https://github.com/isaacs/node-touch/blob/master/touch.js
}

export function remove(path) {
  fs.unlinkSync(path)
}

export function read(path) {
  return fs.readFileSync(path)
}

export function write(path, content, encoding = 'utf8') {
  fs.writeFileSync(path, content, encoding)
}

export function setName(sourcePath, targetPath) {
  fs.renameSync(sourcePath, targetPath)
}

// http://stackoverflow.com/questions/11775884/nodejs-file-permissions
export function getMode(path) {
  return fs.statSync(path).mode
}

export function setMode(path, mode) {
  fs.chmodSync(path, mode)
}

export function getSize(path) {
  return fs.statSync(path).size
}

export function getPathAbsolute(path) {
  return pathModule.absolute(path);
}
