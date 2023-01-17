import 'package:cubit_example/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        String numberText = '0';
        if(state is CounterLoading){
          numberText = 'Loading';
        }else if(state is CounterLoaded){
          numberText = state.number.toString();
        }else if(state is CounterError){
          numberText = state.errorMessage;
        }
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Let\'s see how many times you pressed the button!'),
              Text(numberText),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrementNumber();
                  }, icon: const Icon(Icons.remove)),
                  IconButton(onPressed: () {
                    BlocProvider.of<CounterCubit>(context).incrementNumber();
                  }, icon: const Icon(Icons.add)),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
