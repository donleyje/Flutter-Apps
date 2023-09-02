import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int thumbsUpCount = 999;
  bool isMailIconClicked = false; // Track the icon state
  bool isPhoneIconClicked = false;
  bool isRouteIconClicked = false;

  void increaseThumbsUpCount() {
    setState(() {
      thumbsUpCount++;
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void toggleMailIcon(BuildContext context) {
    setState(() {
      isMailIconClicked = !isMailIconClicked;
    });
    _showSnackBar(context, 'Mail ITESO');
  }

  void togglePhoneIcon(BuildContext context) {
    setState(() {
      isPhoneIconClicked = !isPhoneIconClicked;
    });
    _showSnackBar(context, 'Call ITESO');
  }

  void toggleRouteIcon(BuildContext context) {
    setState(() {
      isRouteIconClicked = !isRouteIconClicked;
    });
    _showSnackBar(context, 'Map ITESO');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('App Iteso'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(
                  'https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg'),
              SizedBox(height: 25),
              ListTile(
                title: const Text(
                  "El ITESO, Universidad Jesuita de Guadalajara",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("San Pedro Tlaquepaque, Jal."),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        increaseThumbsUpCount();
                      },
                      icon: Icon(
                        Icons.thumb_up,
                        size: 35,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.6),
                      child: Text(thumbsUpCount.toString()),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {
                          toggleMailIcon(context); // Pass the context
                        },
                        icon: Icon(
                          Icons.mail,
                          size: 48,
                          color: isMailIconClicked
                              ? Colors.indigo
                              : Colors.black, // Change color based on state
                        ),
                      ),
                      const Text("Correo"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {
                          togglePhoneIcon(context); // Pass the context
                        },
                        icon: Icon(
                          Icons.phone_in_talk,
                          size: 48,
                          color:
                              isPhoneIconClicked ? Colors.indigo : Colors.black,
                        ),
                      ),
                      const Text("Llamada"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {
                          toggleRouteIcon(context); // Pass the context
                        },
                        icon: Icon(
                          Icons.directions,
                          size: 48,
                          color:
                              isRouteIconClicked ? Colors.indigo : Colors.black,
                        ),
                      ),
                      const Text("Ruta"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 64),
              const Text(
                '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.

La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.''',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
