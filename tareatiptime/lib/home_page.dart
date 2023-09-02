import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

enum tipPercentage { amazing, good, okay }

class _HomePageState extends State<HomePage> {
  var cost = TextEditingController();
  double total = 0.0;
  double result = 0.0;
  double tipper = 0.0;
  int selectedpercentage = 18;
  tipPercentage? _tip = tipPercentage.good;
  bool round = true;

  @override
  void dispose() {
    cost.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.store, size: 30),
                      color: Colors.green),
                  SizedBox(
                    width: 150,
                    child: TextField(
                      controller: cost,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      onChanged: (cost) {
                        total = double.parse(cost);
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Cost of Service',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.room_service, size: 30),
                      color: Colors.green),
                  Text('How was the service?'),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('Amazing (20%)'),
                  leading: Radio<tipPercentage>(
                    value: tipPercentage.amazing,
                    groupValue: _tip,
                    onChanged: (tipPercentage? value) {
                      setState(() {
                        _tip = value;
                        if (_tip == tipPercentage.amazing) {
                          tipper = 0.20;
                        }
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Good (18%)'),
                  leading: Radio<tipPercentage>(
                    value: tipPercentage.good,
                    groupValue: _tip,
                    onChanged: (tipPercentage? value) {
                      setState(() {
                        _tip = value;
                        if (_tip == tipPercentage.good) {
                          tipper = 0.18;
                        }
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Okay (15%)'),
                  leading: Radio<tipPercentage>(
                    value: tipPercentage.okay,
                    groupValue: _tip,
                    onChanged: (tipPercentage? value) {
                      setState(() {
                        _tip = value;
                        if (_tip == tipPercentage.okay) {
                          tipper = 0.15;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_outward, size: 30),
                      color: Colors.green),
                  Text('Round up tip?'),
                  Spacer(flex: 4),
                  Switch(
                      value: round,
                      onChanged: (bool value) {
                        setState(() {
                          round = value;
                        });
                      })
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      if (cost.text.isNotEmpty) {
                        setState(() {
                          result = (tipper * total);
                          if (round) {
                            result = result.ceilToDouble();
                          }
                        });
                      }
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text('Tip Amount: \$$result'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
