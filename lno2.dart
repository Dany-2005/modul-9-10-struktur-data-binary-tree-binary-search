import 'dart:collection';

// Node class
class Node<T> {
  T key;
  Node<T>? left, right;

  Node(this.key);
}

// Binary Tree class
class BinaryTree<T> {
  Node<T>? root;

  BinaryTree();

  void inOrder(Node<T>? node) {
    if (node != null) {
      inOrder(node.left);
      print('${node.key} ');
      inOrder(node.right);
    }
  }

  void preOrder(Node<T>? node) {
    if (node != null) {
      print('${node.key} ');
      preOrder(node.left);
      preOrder(node.right);
    }
  }

  void postOrder(Node<T>? node) {
    if (node != null) {
      postOrder(node.left);
      postOrder(node.right);
      print('${node.key} ');
    }
  }

  void printInOrder() => inOrder(root);
  void printPreOrder() => preOrder(root);
  void printPostOrder() => postOrder(root);
}

void main() {
  // Studi Kasus 1
  BinaryTree<String> tree1 = BinaryTree<String>();
  tree1.root = Node('A');
  tree1.root!.left = Node('B');
  tree1.root!.right = Node('C');
  tree1.root!.left!.left = Node('D');
  tree1.root!.left!.right = Node('E');
  tree1.root!.right!.right = Node('F');
  tree1.root!.right!.right!.right = Node('G');

  print(' Studi Kasus 1 ');
  print('InOrder:');
  tree1.printInOrder();
  print('PreOrder:');
  tree1.printPreOrder();
  print('PostOrder:');
  tree1.printPostOrder();

  // Studi Kasus 2
  BinaryTree<String> tree2 = BinaryTree<String>();
  tree2.root = Node('A');
  tree2.root!.left = Node('B');
  tree2.root!.right = Node('C');
  tree2.root!.left!.left = Node('D');
  tree2.root!.left!.right = Node('E');
  tree2.root!.right!.right = Node('F');
  tree2.root!.left!.left!.left = Node('G');
  tree2.root!.left!.left!.right = Node('H');

  print('\n Studi Kasus 2 ');
  print('InOrder:');
  tree2.printInOrder();
  print('PreOrder:');
  tree2.printPreOrder();
  print('PostOrder:');
  tree2.printPostOrder();

  // Studi Kasus 3
  BinaryTree<String> tree3 = BinaryTree<String>();
  tree3.root = Node('+');
  tree3.root!.left = Node('*');
  tree3.root!.right = Node('/');
  tree3.root!.left!.left = Node('a');
  tree3.root!.left!.right = Node('b');
  tree3.root!.right!.left = Node('-');
  tree3.root!.right!.right = Node('e');
  tree3.root!.right!.left!.left = Node('c');
  tree3.root!.right!.left!.right = Node('d');

  print('\n Studi Kasus 3 ');
  print('InOrder:');
  tree3.printInOrder();
  print('PreOrder:');
  tree3.printPreOrder();
  print('PostOrder:');
  tree3.printPostOrder();
}
