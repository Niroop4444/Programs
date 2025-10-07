import 'dart:math';

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinarySearchTree {
  Node? root;

  void insert(int value) {
    root = _insertNode(root, value);
  }

  Node _insertNode(Node? node, int value) {
    if (node == null) return Node(value);

    if (value < node.value) {
      node.left = _insertNode(node.left, value);
    } else if (value > node.value) {
      node.right = _insertNode(node.right, value);
    }

    return node;
  }

  void insertList(List<int> values) {
    for (final value in values) {
      insert(value);
    }
  }

  bool isBalanced() => _checkHeight(root) != -1;

  int _checkHeight(Node? node) {
    if (node == null) return 0;

    int leftHeight = _checkHeight(node.left);
    if (leftHeight == -1) return -1;

    int rightHeight = _checkHeight(node.right);
    if (rightHeight == -1) return -1;

    if ((leftHeight - rightHeight).abs() > 1) return -1;

    return 1 + max(leftHeight, rightHeight);
  }

  void inorderTraversal(Node? node) {
    if (node == null) return;

    inorderTraversal(node.left);
    print(node.value);
    inorderTraversal(node.right);
  }
}

void main() {
  final bst = BinarySearchTree();
  bst.insertList([10, 5, 15, 3, 7, 12, 18]);

  print("In-order traversal:");
  bst.inorderTraversal(bst.root);

  print("\nIs tree balanced? ${bst.isBalanced()}");
}
