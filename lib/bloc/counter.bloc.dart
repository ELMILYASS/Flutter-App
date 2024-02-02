import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

abstract class CounterState {
  final int counter;

  CounterState({required this.counter});
}

class SuccessCounterState extends CounterState {
  SuccessCounterState({required super.counter});
}

class ErrorCounterState extends CounterState {
  final String errorMessage;

  ErrorCounterState({required super.counter, required this.errorMessage});
}

class InitialCounterState extends CounterState {
  InitialCounterState() : super(counter: 0);
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState()) {
    on((IncrementCounterEvent event, emit) {
      if (state.counter < 10) {
        emit(SuccessCounterState(counter: state.counter + 1));
      } else {
        emit(ErrorCounterState(
            counter: state.counter, errorMessage: "Counter can not exceed 10"));
      }
    });
    on((DecrementCounterEvent event, emit) {
      if (state.counter > 0) {
        emit(SuccessCounterState(counter: state.counter - 1));
      } else {
        emit(ErrorCounterState(
            counter: state.counter,
            errorMessage: "Counter can not be less than 0"));
      }
    });
  }
}
