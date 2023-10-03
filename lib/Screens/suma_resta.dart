import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contadordos/Providers/counter_provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({Key? key}) : super(key: key);

  @override
  State<SumaResta> createState() => _SumaRestaState();
}

class _SumaRestaState extends State<SumaResta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          SizedBox(height: 250),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                icon: Icon(Icons.add),
                label: Text('Suma'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                icon: Icon(Icons.remove),
                label: Text('Resta'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<CounterProvider>().reset();
                },
                icon: Icon(Icons.restore),
                label: Text('Reinicio'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
