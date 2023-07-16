import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_solutions/repository/network_repository.dart';

final counterProvider = StateProvider<int>((ref) => 0);

final networkRepositoryProvider =
    StateProvider<NetworkRepository>((ref) => NetworkRepository());


final getTodosProvider = FutureProvider<List<dynamic>>((ref) {

  return ref.watch(networkRepositoryProvider).getTodos();

});