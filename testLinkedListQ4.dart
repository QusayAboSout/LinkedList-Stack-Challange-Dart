import 'Linked_List.dart';

void main() {}

void removeOccurrences(LinkedList list, int x) {
  while (list.head != null && list.head?.value == x) {
    list.head = list.head?.next;
  }
  Node? current = list.head;
  while (current?.next != null) {
    if (current!.next?.value == x) {
      current.next = current.next?.next;
    } else {
      current = current.next;
    }
  }
}
