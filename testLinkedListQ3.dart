import 'linked_list.dart';

void main() {
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);

  node1.next = node2;
  node2.next = node3;
  print(reverseLinkedList(node1));
}

Node reverseLinkedList(Node node) {
  final head = Node(value: node.next?.next?.value);
  final point1 = Node(value: node.next?.value);
  final point2 = Node(value: node.value);
  head.next = point1;
  point1.next = point2;

  return head;
}
