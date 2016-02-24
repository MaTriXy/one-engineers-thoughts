
/**
 * Expose `model`.
 */

module.exports = Model();

/**
 * Construct the base model.
 */

function Model() {
  if (!(this instanceof Model)) return new Model();
  this.files = [];
  this.index = {};
}

/**
 * Add files (sets of statements) to model.
 */

Model.prototype.add = function(file){
  if (this.index[file.name] != null) return;
  this.files.push(file);
  this.index[file.name] = this.files.length - 1;
};
