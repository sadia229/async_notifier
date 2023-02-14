import 'package:async_notifier/apps/weather/provider/todo/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncTodos = ref.watch(asyncTodosProvider);

    return asyncTodos.when(
      data: (todos) => todos.id != null
          ? Scaffold(
              appBar: AppBar(),
              body: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos.title ?? "no title"),
                  );
                },
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('No data'),
              ),
            ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}
