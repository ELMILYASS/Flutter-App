import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/counter.bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Counter"),
          backgroundColor: Theme.of(context).primaryColor),
      body: Center(child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is SuccessCounterState || state is InitialCounterState) {
            return Text("Counter Value = ${state.counter}");
          } else if (state is ErrorCounterState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Counter Value = ${state.counter}"),
                Text(
                  "${state.errorMessage}",
                  style: TextStyle(color: Colors.red),
                )
              ],
            );
          } else {
            return Container();
          }
        },
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "plus",
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounterEvent());
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
