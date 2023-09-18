import 'package:flutter/material.dart';
import 'dart:math';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int generatedNumber = 0;

  void generateRandomNumber() {
    setState(() {
      generatedNumber =
          Random().nextInt(100); // Generate a random number between 0 and 99
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Number Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            generatedNumber != null
                ? Text(
                    'Generated Number: $generatedNumber',
                    style: TextStyle(fontSize: 24.0),
                  )
                : SizedBox(),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: generateRandomNumber,
              child: Text('Generate'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: (){
                _updateResponse(context, generatedNumber);

              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
  void _updateResponse(BuildContext context, int generatedNumber) {
    Navigator.pop(context, generatedNumber.toString());
  }
}
