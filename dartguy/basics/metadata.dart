// Four annotations are available to all Dart code: @Deprecated, @deprecated, @override, and @pragma.

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);

  @Todo('Dash', 'Implement this function')
  void doSomething() {
    print('Do something');
  }
}

void main() {}
