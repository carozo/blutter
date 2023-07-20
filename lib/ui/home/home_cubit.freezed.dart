// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBaseState {
  List<TodoItem> get todoList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoList) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoList)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoList)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBaseStateCopyWith<HomeBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBaseStateCopyWith<$Res> {
  factory $HomeBaseStateCopyWith(
          HomeBaseState value, $Res Function(HomeBaseState) then) =
      _$HomeBaseStateCopyWithImpl<$Res, HomeBaseState>;
  @useResult
  $Res call({List<TodoItem> todoList});
}

/// @nodoc
class _$HomeBaseStateCopyWithImpl<$Res, $Val extends HomeBaseState>
    implements $HomeBaseStateCopyWith<$Res> {
  _$HomeBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_value.copyWith(
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateCopyWith<$Res>
    implements $HomeBaseStateCopyWith<$Res> {
  factory _$$HomeStateCopyWith(
          _$HomeState value, $Res Function(_$HomeState) then) =
      __$$HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoItem> todoList});
}

/// @nodoc
class __$$HomeStateCopyWithImpl<$Res>
    extends _$HomeBaseStateCopyWithImpl<$Res, _$HomeState>
    implements _$$HomeStateCopyWith<$Res> {
  __$$HomeStateCopyWithImpl(
      _$HomeState _value, $Res Function(_$HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_$HomeState(
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc

class _$HomeState implements HomeState {
  const _$HomeState({required final List<TodoItem> todoList})
      : _todoList = todoList;

  final List<TodoItem> _todoList;
  @override
  List<TodoItem> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'HomeBaseState.state(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeState &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateCopyWith<_$HomeState> get copyWith =>
      __$$HomeStateCopyWithImpl<_$HomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoItem> todoList) state,
  }) {
    return state(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoItem> todoList)? state,
  }) {
    return state?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoItem> todoList)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class HomeState implements HomeBaseState {
  const factory HomeState({required final List<TodoItem> todoList}) =
      _$HomeState;

  @override
  List<TodoItem> get todoList;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateCopyWith<_$HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
