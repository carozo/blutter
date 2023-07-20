import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddTodoPage extends StatelessWidget {
  AddTodoPage({super.key});
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Text('Save'),
            onPressed: () {},
          ),
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
                          focusedBorder: InputBorder.none),
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
