class BinarySearchTree<T extends Comparable> {
  STNode<T>? root;
  int treeSize = 0;

  BinarySearchTree();

  bool add(T item) {
    STNode<T>? t = root;
    STNode<T>? parent;
    int orderValue = 0;

    while (t != null) {
      parent = t;
      orderValue = item.compareTo(t.nodeValue);

      if (orderValue == 0) {
        return false;
      } else if (orderValue < 0) {
        t = t.left;
      } else {
        t = t.right;
      }
    }

    STNode<T> newNode = STNode(item, parent);

    if (parent == null) {
      root = newNode;
    } else if (orderValue < 0) {
      parent.left = newNode;
    } else {
      parent.right = newNode;
    }

    treeSize++;
    return true;
  }

  STNode<T>? findNode(T item) {
    STNode<T>? t = root;
    while (t != null) {
      int orderValue = item.compareTo(t.nodeValue);
      if (orderValue == 0) return t;
      t = (orderValue < 0) ? t.left : t.right;
    }
    return null;
  }

  static void InOrderDisplay(dynamic node) {
    if (node != null) {
      InOrderDisplay(node.left);
      print('${node.nodeValue}');
      InOrderDisplay(node.right);
    }
  }

  // ➔ Method first() untuk mendapatkan nilai terkecil
  T? first() {
    if (root == null) return null;
    STNode<T> current = root!;
    while (current.left != null) {
      current = current.left!;
    }
    return current.nodeValue;
  }
}

class STNode<T> {
  T nodeValue;
  STNode<T>? left;
  STNode<T>? right;
  STNode<T>? parent;

  STNode(this.nodeValue, [this.parent]);
}

void main() {
  BinarySearchTree<int> bst = BinarySearchTree();
  bst.add(35);
  bst.add(18);
  bst.add(25);
  bst.add(48);
  bst.add(20);

  print('InOrder Tree:');
  BinarySearchTree.InOrderDisplay(bst.root);

  print('\nNilai terkecil di BST: ${bst.first()}');
}
