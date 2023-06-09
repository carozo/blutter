import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/ui/router.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // TODO: this should be moved to a repo
  final List<TodoItem> _items = [
    TodoItem(
        title: 'Two-line item', description: 'Secondary text', isChecked: true),
    TodoItem(
        title: 'Two-line item', description: 'Secondary text', isChecked: true),
  ];

  void _clearAllDone() {
    setState(() {
      _items.removeWhere((element) => element.isChecked);
    });
  }

  void _changeCheckboxValue(int index, bool? value) {
    if (index == 0) {
      //logic
    }
  }

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
        body: Column(
          children: [
            ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _items.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 0.2,
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(_items[index].title),
                      subtitle: Text(_items[index].description ?? ''),
                      tileColor: Colors.white,
                      trailing: Checkbox(
                        onChanged: (value) =>
                            _changeCheckboxValue(index, value),
                        value: _items[index].isChecked,
                      ),
                    ),
                  );
                }),
            MaterialButton(
              onPressed: _clearAllDone,
              child: const Text(
                'CLEAR ALL DONE',
                style: TextStyle(color: Color(0xffee1a64)),
              ),
            )
          ],
        ));
  }
}
