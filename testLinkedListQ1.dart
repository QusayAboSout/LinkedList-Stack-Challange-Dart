import 'Linked_List.dart';
void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);

  node1.next = node2;
  node2.next = node3;
  reverseLinkedList(node1);
}

void reverseLinkedList(Node node) {
  final head = Node(value: node.next?.next?.value);
  final point1 = Node(value: node.next?.value);
  final point2 = Node(value: node.value);
  print(head.value);
  print(point1.value);
  print(point2.value);
}

