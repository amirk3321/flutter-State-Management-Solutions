


import 'package:flutter/material.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/bloc_home.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/cubit_home.dart';
import 'package:flutter_state_management_solutions/ui/riverpod_practice/riverpod_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter State Management Solutions"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (_) => RiverpodHome()));

              },
              child: Text(
                "Flutter Riverpod",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CubitHome()),
                );
              },
              child: Text(
                "Flutter Cubit",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BlocHome()),
                );
              },
              child: Text(
                "Flutter Bloc",
                style: TextStyle(fontSize: 20),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
