import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());


  void incrementNumber(){
    emit(CounterLoading());
    try{
      emit(CounterLoaded(number: (state as CounterLoaded).number + 1));
    }catch(e){
      emit(CounterError(errorMessage: e.toString()));
    }
  }

  void decrementNumber(){
    emit(CounterLoading());
    try{
      emit(CounterLoaded(number: (state as CounterLoaded).number - 1));
    }catch(e){
      emit(CounterError(errorMessage: e.toString()));
    }
  }
}
