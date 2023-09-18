import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 3'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _updateResponse(context, '=＾● ⋏ ●＾=');
                        },
                        child: Text('=＾● ⋏ ●＾='),
                      ),
                      SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          _updateResponse(context, '⊙▂⊙');
                        },
                        child: Text('⊙▂⊙'),
                      ),
                      SizedBox(width: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          _updateResponse(context, '༼ ༎ຶ ෴ ༎ຶ༽');
                        },
                        child: Text('༼ ༎ຶ ෴ ༎ຶ༽'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateResponse(BuildContext context, String buttonText) {
    Navigator.pop(context, buttonText);
  }
}
