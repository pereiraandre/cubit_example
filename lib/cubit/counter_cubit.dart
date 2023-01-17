import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterLoaded(number: 0));

  void incrementNumber() {
    emit(CounterLoaded(number: (state as CounterLoaded).number + 1));
  }

  void decrementNumber() {
    emit(CounterLoaded(number: (state as CounterLoaded).number - 1));
  }
}
