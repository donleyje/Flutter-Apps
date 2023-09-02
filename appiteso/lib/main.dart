import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Iteso',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Iteso'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "El ITESO, hhhhhg",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "San Pedro Tlaquepaque, Jal",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {},
                        icon: Icon(Icons.mail),
                      ),
                      Text("Correo"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                      ),
                      Text("Llamada"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        iconSize: 48,
                        onPressed: () {},
                        icon: Icon(Icons.directions),
                      ),
                      Text("Ruta"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Text(
                '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.
        
        La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
