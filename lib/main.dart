import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Todo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ListItem {
  String title;
  String? description;
  bool isChecked;

  ListItem({required this.title, this.description, this.isChecked = false});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ListItem> _items = [
    ListItem(
        title: 'Two-line item', description: 'Secondary text', isChecked: true),
    ListItem(
        title: 'Two-line item', description: 'Secondary text', isChecked: true),
  ];

  void Function(bool?) _onChangedCheckbox(int index) {
    return (bool? value) {
      setState(() {
        _items[index].isChecked = value ?? false;
      });
    };
  }

  void _clearAllDone() {
    setState(() {
      _items.removeWhere((element) => element.isChecked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
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
                      height: 0,
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_items[index].title),
                    subtitle: Text(_items[index].description ?? ''),
                    tileColor: Colors.white,
                    trailing: Checkbox(
                      value: _items[index].isChecked,
                      onChanged: _onChangedCheckbox(index),
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xffee1a64)),
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
