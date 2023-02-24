// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moviefactory/peliculas.dart';
import 'package:moviefactory/video.dart';

class peliculaPage extends StatefulWidget {
  final Pelicula pelicula;

  const peliculaPage({super.key, required this.pelicula});

  @override
  State<peliculaPage> createState() => _peliculaPageState();
}

class _peliculaPageState extends State<peliculaPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.pelicula.urlImage,
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                widget.pelicula.title,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Sinopsis',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      widget.pelicula.sinopsis,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Regresar',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[500]),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Video(urlVideo: widget.pelicula.urlVideo,)));
                    },
                    child: Text(
                      'Ver pelicula',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
