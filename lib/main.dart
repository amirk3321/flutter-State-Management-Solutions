import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/manager/counter/counter_bloc.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/manager/network_bloc/network_bloc.dart';
import 'package:flutter_state_management_solutions/ui/flutter_bloc_practice/manager/network_bloc/network_events.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/manager/counter_cubit.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/manager/network_cubit/network_cubit.dart';
import 'package:flutter_state_management_solutions/ui/home_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NetworkCubit>(create: (_) => NetworkCubit()..getTodos()),
        BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
        BlocProvider<CounterBloc>(create: (_) => CounterBloc()),
        BlocProvider<NetworkBloc>(
          create: (_) => NetworkBloc()..add(GetTodosEvent()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter State Management Solutions',
        home: HomePage(),
      ),
    );
  }
}
