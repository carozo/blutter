import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/ui/router.dart';

@RoutePage()
class DetailsPage extends StatefulWidget {
  final TodoItem todoItem;

  const DetailsPage({super.key, required this.todoItem});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => context.router.push(const AddTodoRoute()),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(widget.todoItem.title),
              Text(widget.todoItem.description ?? ''),
            ],
          ),
        ));
  }
}
