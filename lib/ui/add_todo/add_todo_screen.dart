import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/todo.dart';
import 'add_todo_cubit.dart';

@RoutePage()
class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTodoCubit(),
      child: Builder(builder: (context) {
        return _AddTodoScreenContent(
          titleController: _titleController,
          descriptionController: _descriptionController,
        );
      }),
    );
  }
}

class _AddTodoScreenContent extends StatelessWidget {
  const _AddTodoScreenContent({
    required TextEditingController titleController,
    required TextEditingController descriptionController,
  })  : _titleController = titleController,
        _descriptionController = descriptionController;

  final TextEditingController _titleController;
  final TextEditingController _descriptionController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Text('Save'),
              onPressed: () {
                context.read<AddTodoCubit>().addTodoItem(
                      TodoItem(
                        title: _titleController.text,
                        description: _descriptionController.text,
                        isChecked: false,
                      ),
                    );
                context.router.pop();
              }),
        ],
        title: const Text('Add Todo'),
      ),
      body: Column(
        children: [
          Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      controller: _titleController,
                      style: const TextStyle(fontSize: 36),
                      decoration: const InputDecoration(
                        hintText: 'Task title',
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xffee1a64)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffee1a64)),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        hintText: 'Task description',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              )),
          const Divider(
            height: 0,
          )
        ],
      ),
    );
  }
}
