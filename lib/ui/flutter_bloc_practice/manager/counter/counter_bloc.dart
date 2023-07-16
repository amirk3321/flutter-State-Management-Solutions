

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{

  CounterBloc() :super(0){
    on<IncrementEvent>((event, emit) => emit(state+1));
    on<DecrementEvent>((event, emit) => emit(state-1));
    on<RefreshEvent>((event, emit) => emit(0));
  }



}


abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent{}

class RefreshEvent extends CounterEvent{}