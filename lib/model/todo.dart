import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem({
    required String title,
    required String? description,
    required bool isChecked,
  }) = _TodoItem;
}
