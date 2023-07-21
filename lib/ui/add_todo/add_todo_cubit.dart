import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namer_app/di/di_provider.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/repository/todo_repository.dart';

class AddTodoCubit extends Cubit {
  final _todoRepository = DiProvider.get<TodoRepository>();

  AddTodoCubit() : super([]);

  void addTodoItem(TodoItem todoItem) async {
    await _todoRepository.addTodoItem(todoItem);
  }
}
