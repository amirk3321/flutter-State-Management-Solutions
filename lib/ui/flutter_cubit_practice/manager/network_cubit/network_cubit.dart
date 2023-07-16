



import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management_solutions/repository/network_repository.dart';
import 'package:flutter_state_management_solutions/ui/flutter_cubit_practice/manager/network_cubit/network_state.dart';

class NetworkCubit extends Cubit<NetworkState> {

  NetworkCubit() : super(NetworkInitialState());


  final NetworkRepository repository = NetworkRepository();


  Future<void> getTodos() async {

    emit(NetworkLoadingState());
    try {


      repository.getTodos().then((todos) {
        emit(NetworkLoadedState(todos));
      });


    }catch(_){
      emit(NetworkFailureState());
    }


  }


}