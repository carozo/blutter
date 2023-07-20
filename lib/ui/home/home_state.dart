part of 'home_cubit.dart';

@freezed
class HomeBaseState with _$HomeBaseState {
  const factory HomeBaseState.state({
    required List<TodoItem> todoList,
  }) = HomeState;
}
