import 'dart:io';

void main() {
  String? s = stdin.readLineSync();
  if (Qsolve(s!)) {
    print('Balanced');
  } else {
    print('not Balanced');
  }
}

bool Qsolve(String s) {
  final st = Stack<String>();
  st.push(s[0]);
  for (int i = 1; i < s.length; i++) {
    if (st.isEmpty) {
      st.push(s[i]);
      continue;
    } else if (check(st.peek, s[i])) {
      st.pop();
    } else if (s[i] != st.peek) {
      st.push(s[i]);
    }
  }
  if (st.isEmpty)
    return true;
  else
    return false;
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();
  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;
}

bool check(String ch, String px) {
  if (ch == '[' && px == ']') {
    return true;
  } else if (ch == '{' && px == '}') {
    return true;
  } else if (ch == '(' && px == ')') {
    return true;
  }
  return false;
}
