import 'package:contadordos/Providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Primo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int numeroModificado = context.watch<CounterProvider>().counter;
    Color colorTexto = context.read<CounterProvider>().esPrimo(numeroModificado)
        ? Colors.green
        : Colors.blue;

    return Center(
      child: Text(
        'Primo',
        style: TextStyle(fontSize: 80, color: colorTexto),
      ),
    );
  }
}
