import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'hellow_world_cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BLoC Hello World'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<HelloWorldCubit, String>(
              builder: (context, state) {
                return Text(
                  state,
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     context.read<HelloWorldCubit>().changeMessage('Hello BLoC!');
            //   },
            //   child: const Text('Change Message'),
            // ),
          ],
        ),
      ),
    );
  }
}
