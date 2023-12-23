class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }

  Node clone() {
    Node node = new Node(value: value, next: next);
    return node;
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeAfter(Node<E> node) {
  final value = node.next?.value;
  if (node.next == tail) {
    tail = node;
  }
  node.next = node.next?.next;
  return value;

  Node<E>? nodeAt(int index) {
  // 1
  var currentNode = head;
  var currentIndex = 0;

  // 2
  while (currentNode != null && currentIndex < index) {
    currentNode = currentNode.next;
    currentIndex += 1;
  }
  return currentNode;
}

}

}
