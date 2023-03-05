// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:moviefactory/peliculas.dart';
import 'package:moviefactory/peliculas.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({super.key});

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  List<Pelicula> peliculas = allMovies;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Center(
              child: Text('Favoritos',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 400.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                    image: AssetImage('assets/batman.jpg'), fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 20,
                  top: 190,
                  child: Text(
                    'Batman',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 226,
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 262,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 322,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                      label: Text(
                        'Reproducir',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: peliculas.length,
              itemBuilder: (context, index) {
                var pelicula = peliculas[index];
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: ListTile(
                    leading: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: 100, minWidth: 100),
                          child: Image.asset(
                            pelicula.urlImage,
                            fit: BoxFit.cover,
                          ),
                    ),
                    title: Text(
                      pelicula.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
