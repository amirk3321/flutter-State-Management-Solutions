import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_solutions/ui/riverpod_practice/manager/riverpod_provider.dart';

class RiverpodCounterApp extends ConsumerWidget {
  const RiverpodCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) {
      if (next <= -1) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Negative value is danger for app health'),
          ),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Boring Counter App"),
      ),
      body: Center(
        child: Text(
          "Counter : $count",
          style: TextStyle(fontSize: 25),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: "1",
            child: Icon(Icons.add),
            onPressed: () {
              ref.read(counterProvider.notifier).state++;
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "2",
            child: Icon(Icons.remove),
            onPressed: () {
              ref.read(counterProvider.notifier).state--;
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "2",
            child: Icon(Icons.refresh),
            onPressed: () {
              ref.refresh(counterProvider);
            },
          ),
        ],
      ),
    );
  }
}
