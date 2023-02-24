// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container()
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container Principal() {
    return Container(
    margin: EdgeInsets.all(16),
    width: 629,
    height: 370,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage('assets/batman.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Positioned(
          top: 190,
          left: 20,
          child: Text(
            'Batman',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        Positioned(
          top: 226,
          left: 20,
          child: Text(
            'John Doe',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 20),
          ),
        ),
        Positioned(
          top: 262,
          left: 20,
          child: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ),
        Positioned(
          top: 322,
          left: 20,
          child: ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.play_arrow, color: Colors.black,),
            label: Text('Reproducir', style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        )
      ],
    ),
    
  );
  }

  Column text() {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Center(
            child: Text(
              'Favoritos',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
