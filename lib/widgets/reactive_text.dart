import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReactiveText extends StatefulWidget {
  String name;
  String response;
  Function(String) updateResponse;

  ReactiveText(
      {Key? key,
      required this.name,
      required this.response,
      required this.updateResponse})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ReactiveText> createState() => _ReactiveTextState(
        name: name,
        response: response,
      );
}

class _ReactiveTextState extends State<ReactiveText> {
  String name;
  String response;

  _ReactiveTextState({required this.name, required this.response});

  @override
  Widget build(BuildContext context) {
    return Text("${widget.name} => ${widget.response}");
  }
}
