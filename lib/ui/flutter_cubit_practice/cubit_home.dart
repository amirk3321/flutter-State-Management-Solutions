


import 'package:flutter/material.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/cubit_counter_app.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/cubit_todos_page.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cubit Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CubitCounterApp()),
                );
              },
              child: Text(
                "Cubit Boring Counter App",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CubitTodosPage()),
                );
              },
              child: Text(
                "Cubit Api Call",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
