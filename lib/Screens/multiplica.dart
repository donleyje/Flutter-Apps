import 'package:contadordos/Providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({Key? key}) : super(key: key);

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              _showMultiplicationResult(context, 2);
              context.read<CounterProvider>().multi(2);
            },
            icon: Text('x2'),
          ),
          IconButton(
            onPressed: () {
              _showMultiplicationResult(context, 3);
              context.read<CounterProvider>().multi(3);
            },
            icon: Text('x3'),
          ),
          IconButton(
            onPressed: () {
              _showMultiplicationResult(context, 5);
              context.read<CounterProvider>().multi(5);
            },
            icon: Text('x5'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<CounterProvider>().counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }

  void _showMultiplicationResult(BuildContext context, int factor) {
    final message = 'Multiplicado por $factor';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
