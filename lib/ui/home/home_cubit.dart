import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:namer_app/model/todo.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final List<TodoItem> todoList = [
    const TodoItem(
      title: 'Two-line item',
      description: 'Secondary text',
      isChecked: true,
    ),
    const TodoItem(
      title: 'Two-line item',
      description: 'Secondary text',
      isChecked: true,
    ),
  ];

  HomeCubit() : super(const HomeState(todoList: [])) {
    _loadTasks();
  }

  void _loadTasks() {
    emit(state.copyWith(todoList: todoList));
  }

  void changeCheckboxValue(bool? value, int index) {
    List<TodoItem> newTodoList = [...state.todoList];
    newTodoList[index] = newTodoList[index].copyWith(isChecked: value ?? false);
    emit(state.copyWith(todoList: newTodoList));
  }

  void clearAllDone() {
    List<TodoItem> newTodoList = [...state.todoList]
      ..removeWhere((element) => element.isChecked);
    emit(state.copyWith(todoList: newTodoList));
  }

  void addTodoItem(TodoItem todoItem) {
    List<TodoItem> newTodoList = [...state.todoList, todoItem];
    emit(state.copyWith(todoList: newTodoList));
  }
}
