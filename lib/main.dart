import 'package:flutter/material.dart';
import 'package:namer_app/ui/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
