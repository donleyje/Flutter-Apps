import 'package:flutter/material.dart';
import 'package:tarearepaso/widgets/title.dart';
import 'package:tarearepaso/widgets/reactive_text.dart';
import 'package:tarearepaso/screen/pagina_dos.dart';
import 'package:tarearepaso/screen/pagina_tres.dart';

String reactiveText2Response = "";
String reactiveText3Response = "";

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _textEditingController = TextEditingController();

  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Type a word'),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(hintText: 'Type here...'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                String typedWord = _textEditingController.text;
                Navigator.pop(context); // Close the dialog
                if (typedWord.isNotEmpty) {
                  // Navigate to Pagina 2 and pass the typed word
                  final generatedNumber = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                  if (generatedNumber != null) {
                    setState(() {
                      reactiveText2Response = '$generatedNumber';
                    });
                  }
                }
              },
              child: Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AwesomeTitle(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50.0),
              child: const Image(
                image: AssetImage("lib/assets/come_to_the_dart_size.png"),
              ),
            ),
            const Text(
              "Seleccione la acción a realizar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showDialog(context);
                  },
                  child: const Text("Pagina 2"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final buttonText = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                    if (buttonText != null) {
                      setState(() {
                        reactiveText3Response = buttonText;
                      });
                    }
                  },
                  child: const Text("Pagina 3"),
                )
              ],
            ),
            SizedBox(height: 40.0),
            reactiveText2,
            SizedBox(height: 30.0),
            reactiveText3,
          ],
        ),
      ),
    );
  }

  Widget get reactiveText2 {
    return ReactiveText(
      name: "Pg.2",
      response: reactiveText2Response,
      updateResponse: (response) {
        setState(() {
          reactiveText2Response = response;
        });
      },
    );
  }

  Widget get reactiveText3 {
    return ReactiveText(
      name: "Pg.3",
      response: reactiveText3Response,
      updateResponse: (response) {
        setState(() {
          reactiveText3Response = response;
        });
      },
    );
  }
}
