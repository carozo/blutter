import 'dart:async';

import '../model/todo.dart';

abstract class ITodoRepository {
  // Stream<List<TodoItem>> getTodoList();
  Future<void> addTodoItem(TodoItem todoItem);
  Future<void> changeCheckboxValue(bool? value, int index);
  Future<void> clearAllDone();
  Stream<List<TodoItem>> get todoStream;
}

class TodoRepository implements ITodoRepository {
  final StreamController<List<TodoItem>> _todoListStreamController =
      StreamController.broadcast();
  //TODO: get this from API
  final List<TodoItem> _todoList = [
    const TodoItem(
      title: 'Two-line item 0',
      description: 'Secondary text',
      isChecked: true,
    ),
    const TodoItem(
      title: 'Two-line item 1',
      description: 'Secondary text',
      isChecked: true,
    ),
    const TodoItem(
      title: 'Two-line item 2',
      description: 'Secondary text',
      isChecked: false,
    ),
  ];

  @override
  Stream<List<TodoItem>> get todoStream => _todoListStreamController.stream;

  @override
  Future<void> addTodoItem(TodoItem todoItem) async {
    _todoList.add(todoItem);
    _todoListStreamController.sink.add(_todoList);
  }

  @override
  Future<void> changeCheckboxValue(bool? value, int index) async {
    _todoList[index] = _todoList[index].copyWith(isChecked: value ?? false);
    _todoListStreamController.sink.add(_todoList);
  }

  @override
  Future<void> clearAllDone() async {
    _todoList.removeWhere((element) => element.isChecked);
    _todoListStreamController.sink.add(_todoList);
  }
}

//Questions:
// where do i put this file?
// future to stream?
// name of the class and abstract class?
// why get_it instead of flutter bloc (template)?