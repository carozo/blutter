import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/ui/add_todo.dart';
import 'package:namer_app/ui/home/home_screen.dart';
import 'package:namer_app/ui/details.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: MyHomeRoute.page,
        ),
        AutoRoute(page: AddTodoRoute.page),
        AutoRoute(page: DetailsRoute.page)
      ];
}
