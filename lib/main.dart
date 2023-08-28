import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Mc Flutter')),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardExample(),
          ],
        ),
      ),
    );
  }
}

class CardExample extends StatefulWidget {
  const CardExample({super.key});

  @override
  _CardExampleState createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  bool accessibilityButtonPressed = false;
  bool timerButtonPressed = false;
  bool androidButtonPressed = false;
  bool iphoneButtonPressed = false;

  void _showSnackBar(String buttonName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Button: $buttonName'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 160,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, width: 2.0), // Set the border color here
      ),
      child: Card(
        elevation: 0.0, // Set the elevation to 0 to remove the shadow
        shape: const RoundedRectangleBorder(
          side: BorderSide(
              width: 1.0,
              color: Colors.transparent), // Hide the card's side border
        ),
        child: Column(
          children: <Widget>[
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(70, 0, 20, 0),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconTheme(
                    data: IconThemeData(size: 60, color: Colors.black),
                    child: Icon(Icons.account_circle_rounded),
                  ),
                  SizedBox(width: 0), // Adjust the spacing as needed
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter McFlutter',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text('Experienced App Developer'),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(), //Push row to bottom of card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Text('123 Main Street'),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: const Text('(415) 555-0198')),
              ],
            ),
            const Spacer(), //Push row to bottom of card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  child: Icon(Icons.accessibility_new_sharp,
                      color: accessibilityButtonPressed
                          ? Colors.indigo
                          : Colors.black,
                      size: 30.0),
                  onPressed: () {
                    setState(() {
                      accessibilityButtonPressed = !accessibilityButtonPressed;
                    });
                    _showSnackBar('Accessibility');
                  },
                ),
                TextButton(
                  child: Icon(Icons.timer,
                      color: timerButtonPressed ? Colors.indigo : Colors.black,
                      size: 30.0),
                  onPressed: () {
                    setState(() {
                      timerButtonPressed = !timerButtonPressed;
                    });
                    _showSnackBar('Timer');
                  },
                ),
                TextButton(
                  child: Icon(Icons.phone_android,
                      color:
                          androidButtonPressed ? Colors.indigo : Colors.black,
                      size: 30.0),
                  onPressed: () {
                    setState(() {
                      androidButtonPressed = !androidButtonPressed;
                    });
                    _showSnackBar('Phone Android');
                  },
                ),
                TextButton(
                  child: Icon(Icons.phone_iphone,
                      color: iphoneButtonPressed ? Colors.indigo : Colors.black,
                      size: 30.0),
                  onPressed: () {
                    setState(() {
                      iphoneButtonPressed = !iphoneButtonPressed;
                    });
                    _showSnackBar('Phone iphone');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
