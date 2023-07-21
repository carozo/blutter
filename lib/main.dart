import 'package:flutter/material.dart';
import 'package:namer_app/di/di_provider.dart';
import 'package:namer_app/ui/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key) {
    DiProvider.init();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      title: 'Blutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: appRouter.config(),
    );
  }
}
