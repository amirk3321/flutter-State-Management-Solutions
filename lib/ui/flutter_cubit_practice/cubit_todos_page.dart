


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/manager/network_cubit/network_cubit.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/manager/network_cubit/network_state.dart';

class CubitTodosPage extends StatelessWidget {
  const CubitTodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Cubit Todos"),
     ),
      body: BlocBuilder<NetworkCubit,NetworkState>(
        builder: (context ,state){


          if (state is NetworkFailureState){
            return Center(
              child: Text("Something wrong with request"),
            );
          }

          if (state is NetworkLoadingState){
            return Center( child:  CircularProgressIndicator(),);
          }


          if (state is NetworkLoadedState){
            final todosData = state.todos;

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
          }


          return Center(child: CircularProgressIndicator(),);

        },
      ),
    );
  }
}
