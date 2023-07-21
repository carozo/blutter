import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:namer_app/di/di_provider.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/repository/todo_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final _todoRepository = DiProvider.get<TodoRepository>();
  final todoList = <TodoItem>[];

  HomeCubit() : super(const HomeState(todoList: [])) {
    _loadTasks();
  }

  void _loadTasks() {
    _todoRepository.todoStream.listen((list) async {
      List<TodoItem> newList = list;
      print(list);
      emit(state.copyWith(todoList: newList));
    });
  }

  void changeCheckboxValue(bool? value, int index) {
    _todoRepository.changeCheckboxValue(value, index);
  }

  void clearAllDone() {
    _todoRepository.clearAllDone();
  }
}
