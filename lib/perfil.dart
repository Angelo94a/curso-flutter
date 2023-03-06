// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/perfil.jpg'),
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'johndoe@correo.com',
                  style: TextStyle(
                      color: Colors.grey[700], fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
          color: Color.fromARGB(103, 97, 97, 97),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.more),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        alignment: Alignment.centerLeft),
                    label: Text(
                      'Más opciones',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.help),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        alignment: Alignment.centerLeft),
                    label: Text(
                      'Ayuda',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.translate),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      alignment: Alignment.centerLeft
                    ),
                    label: Text(
                      'Lenguaje',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.maps_ugc_outlined),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        alignment: Alignment.centerLeft),
                    label: Text(
                      'Ubicación',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
