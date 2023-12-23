import 'Linked_List.dart';

void main() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  int z = findMiddle(list);

  print(" The size is : $z");
}

int findMiddle(LinkedList list) {
  int linkedListSize = 0;
  Node? curr = list.head;
  while (curr != list.tail) {
    linkedListSize++;
    curr = curr?.next;
  }
  Node? curr2 = list.head;
  num y = linkedListSize % 2 == 0
      ? linkedListSize / 2
      : (linkedListSize / 2).round();
  for (int i = 0; i < y; i++) {
    curr2 = curr2?.next;
  }
  return curr2?.value;
}
