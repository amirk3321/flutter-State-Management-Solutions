

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/manager/counter/counter_bloc.dart';

class BlocCounterApp extends StatelessWidget {
  const BlocCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boring Counter App"),
      ),
      body: BlocConsumer<CounterBloc,int>(
        listener: (context,state){

          if (state <=-1){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Negative value is danger for app health'),
              ),
            );
          }

        },
        builder: (context,state){


          return Center(
            child: Text(
              "Counter : $state",
              style: TextStyle(fontSize: 25),
            ),
          );

        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: "1",
            child: Icon(Icons.add),
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "2",
            child: Icon(Icons.remove),
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "2",
            child: Icon(Icons.refresh),
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(RefreshEvent());
            },
          ),
        ],
      ),
    );
  }
}
