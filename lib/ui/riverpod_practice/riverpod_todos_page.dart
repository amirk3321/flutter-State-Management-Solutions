

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_solutions/ui/riverpod_practice/manager/riverpod_provider.dart';

class RiverpodTodosPage extends ConsumerWidget {
  const RiverpodTodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final todos = ref.watch(getTodosProvider);


    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod todos"),
      ),
      body: todos.when(data: (todosData){

        return ListView.builder(
          itemCount: todosData.length,
          itemBuilder: (context,index){

           final todoItem= todosData[index];
            return Card(
              color: todoItem['completed'] == false ? Colors.orange:Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  todoItem['title'],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        );

      }, error: (error,_) => Center(child: Text(error.toString()),), loading: () => Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
