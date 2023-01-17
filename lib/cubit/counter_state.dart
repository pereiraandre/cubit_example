part of 'counter_cubit.dart';

abstract class CounterState {}

class CounterLoaded extends CounterState {
  final int number;

  CounterLoaded({required this.number});
}
