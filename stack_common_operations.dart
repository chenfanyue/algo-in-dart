class Stack<T> {
  final List<T> _stack = [];

  // 将元素推入栈顶
  void push(T element) {
    _stack.add(element);
  }

  // 从栈顶弹出元素
  T? pop() {
    if (_stack.isEmpty) {
      return null;
    }
    return _stack.removeLast();
  }

  // 查看栈顶元素但不弹出
  T? peek() {
    if (_stack.isEmpty) {
      return null;
    }
    return _stack.last;
  }

  // 检查栈是否为空
  bool isEmpty() {
    return _stack.isEmpty;
  }

  // 获取栈中元素的数量
  int size() {
    return _stack.length;
  }
}

void main() {
  final stack = Stack<int>();

  // 推入元素
  stack.push(1);
  stack.push(2);
  stack.push(3);

  // 查看栈顶元素
  print('Peek: ${stack.peek()}'); // Peek: 3

  // 弹出元素
  print('Pop: ${stack.pop()}'); // Pop: 3

  // 查看栈顶元素
  print('Peek: ${stack.peek()}'); // Peek: 2

  // 获取栈的大小
  print('Size: ${stack.size()}'); // Size: 2

  // 检查栈是否为空
  print('Is Empty: ${stack.isEmpty() ? 'Yes' : 'No'}'); // Is Empty: false

  // 弹出所有元素
  stack.pop();
  stack.pop();

  // 检查栈是否为空
  print('Is Empty: ${stack.isEmpty()}'); // Is Empty: true
}
