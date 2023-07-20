import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namer_app/model/todo.dart';
import 'package:namer_app/ui/home/home_cubit.dart';
import 'package:namer_app/ui/router.dart';

@RoutePage()
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeCubit(),
        child: _MyHomePageContentScreen(),
      );
}

class _MyHomePageContentScreen extends StatelessWidget {
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
          BlocSelector<HomeCubit, HomeBaseState, List<TodoItem>>(
            selector: (state) => state.todoList,
            builder: (context, todoList) => ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: todoList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 0.2,
                    ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.white,
                    child: ListTile(
                      onTap: () => context.router
                          .push(DetailsRoute(todoItem: todoList[index])),
                      title: Text(todoList[index].title),
                      subtitle: Text(todoList[index].description ?? ''),
                      tileColor: Colors.white,
                      trailing: Checkbox(
                        onChanged: (value) => context
                            .read<HomeCubit>()
                            .changeCheckboxValue(value, index),
                        value: todoList[index].isChecked,
                        activeColor: const Color(0xffee1a64),
                      ),
                    ),
                  );
                }),
          ),
          MaterialButton(
            onPressed: context.read<HomeCubit>().clearAllDone,
            child: const Text(
              'CLEAR ALL DONE',
              style: TextStyle(color: Color(0xffee1a64)),
            ),
          )
        ],
      ),
    );
  }
}
