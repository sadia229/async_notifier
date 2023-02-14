import 'dart:async';
import 'package:async_notifier/apps/weather/model/todo/todo.dart';
import 'package:async_notifier/apps/weather/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_provider.g.dart';

@riverpod
class AsyncTodos extends _$AsyncTodos {
  Future<Todo> _fetchTodo() async {
    Todo? todo;
    TodoRepository? todoRepository;
    var response = await TodoRepository().getTodos();
    print("pro ${response.title}");
    Todo? todos = response;
    return response;
  }

  @override
  FutureOr<Todo> build() async {
    return _fetchTodo();
    print("my bug");
  }
}
