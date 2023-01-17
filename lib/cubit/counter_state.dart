part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterLoading extends CounterState {}

class CounterLoaded extends CounterState {
  final int number;

  CounterLoaded({required this.number});
}

class CounterError extends CounterState {
  final String errorMessage;

  CounterError({required this.errorMessage});
}
