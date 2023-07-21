import 'package:get_it/get_it.dart';

import '../repository/todo_repository.dart';

abstract class DiProvider {
  static GetIt get _instance => GetIt.instance;

  static Future<void> init() async {
    _instance.registerSingleton<TodoRepository>(TodoRepository());
    await _instance.allReady();
  }

  static T get<T extends Object>() => _instance.get();
}
