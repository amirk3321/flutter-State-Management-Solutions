


import 'package:flutter/material.dart';
import 'package:flutter_state_management_solutions/ui/riverpod_practice/riverpod_counter_app.dart';
import 'package:flutter_state_management_solutions/ui/riverpod_practice/riverpod_todos_page.dart';

class RiverpodHome extends StatelessWidget {
  const RiverpodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod Practice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RiverpodCounterApp()),
                );
              },
              child: Text(
                "Riverpod Boring Counter App",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RiverpodTodosPage()),
                );
              },
              child: Text(
                "Riverpod Api Call",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
