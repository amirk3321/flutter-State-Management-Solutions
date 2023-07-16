



import 'package:flutter/material.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/bloc_counter_app.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/bloc_todos_page.dart';

class BlocHome extends StatelessWidget {
  const BlocHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BlocCounterApp()),
                );
              },
              child: Text(
                "Bloc Boring Counter App",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BlocTodosPage()),
                );
              },
              child: Text(
                "Bloc Api Call",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
