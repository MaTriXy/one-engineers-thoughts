
// action insert node, into tree
//   assume node
//   assume key
//   assume value

//   when no node
//     return tree empty, key, value, empty
//   when equal key, key(node)
//     return tree node.left, key, value, node.right
//   when less key, key(node) # get key, from node
//     return tree binary_tree_insert(node.left, key, value), node.key, node.value, node.right
//   when more key, key(node)
//     return tree node.left, node.key, node.value, binary_tree_insert(node.right, key, value)
//
// left(i): 2i if 2i ≤ n otherwise 0
// right(i): (2i + 1) if 2i + 1 ≤ n otherwise 0
// parent(i): i/2 if i ≥ 2 otherwise 0

function tree_insert(node, key, value) {
  if (!node) return Tree({ key, value });
  else if (key === node.key) {
    return Tree({
      left: node.left,
      right: node.right,
      key,
      value
    });
  } else if (key < node.key) {
    return Tree({
      left: tree_insert(node.left, key, value),
      right: node.right,
      key: node.key,
      value: node.value
    });
  } else if (key > node.key) {
    return Tree({
      left: node.left,
      key: node.key,
      value: node.value,
      right: tree_insert(node.right, key, value)
    });
  }
}

function Tree(opts) {
  if (!(this instanceof Tree)) return new Tree(opts);
  opts = opts || {};

  this.left = opts.left;
  this.right = opts.right;
  this.key = opts.key;
  this.value = opts.value;
}
