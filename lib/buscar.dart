// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import
import 'package:flutter/material.dart';
import 'package:moviefactory/peliculaPage.dart';
import 'package:moviefactory/peliculas.dart';

class Buscar extends StatefulWidget {
  const Buscar({super.key});

  @override
  State<Buscar> createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  List<Pelicula> peliculas = allMovies;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: Center(
              child: Text(
            'Buscar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          )),
        ),
        Container(
          margin: EdgeInsets.all(16),
          child: TextField(
            onChanged: (value) => searchMovie(value),
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              hintText: 'Titulo de la pelicula',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
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
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            peliculaPage(pelicula: pelicula))),
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 100,
                    minWidth: 100,
                  ),
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
        )),
      ],
    );
  }

  void searchMovie(String query) {
    setState(() {
      peliculas = allMovies
          .where((pelicula) => pelicula.title.toLowerCase().contains(query))
          .toList();
    });
  }
}
