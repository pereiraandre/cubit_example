import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int number = 1;
  void incrementNumber(){
    emit(CounterLoading());
    try{
      emit(CounterLoaded(number: number++));
    }catch(e){
      emit(CounterError(errorMessage: e.toString()));
    }
  }

  void decrementNumber(){
    emit(CounterLoading());
    try{
      emit(CounterLoaded(number: number--));
    }catch(e){
      emit(CounterError(errorMessage: e.toString()));
    }
  }
}
