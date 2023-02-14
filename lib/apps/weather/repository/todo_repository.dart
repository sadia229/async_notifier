import 'dart:convert';
import 'dart:developer';

import 'package:async_notifier/apps/weather/model/todo/todo.dart';
import 'package:async_notifier/general/constants/api/base_client.dart';
import 'package:async_notifier/general/constants/url.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  Todo? todo;
  Future<Todo> getTodos({context}) async {
    try {
      var response = await BaseClient.get(
        url: Urls.todos,
      );
      if (response.statusCode == 200) {
        print('hello response');
        todo = Todo.fromJson(json.decode(response.data));
      }
      if (response.statusCode == 404) {
        todo = Todo.fromJson(response.data);
        log('No address data found');
      }
      return todo!;
    } catch (e) {
      print("hell");
      rethrow;
    }
  }
}
