// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moviefactory/buscar.dart';
import 'package:moviefactory/favoritos.dart';
import 'package:moviefactory/peliculaPage.dart';
import 'package:moviefactory/peliculas.dart';
import 'package:moviefactory/perfil.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Pelicula> imagesList = allMovies;

  int tabSelected = 1;
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List screens = [homeScreen(), Buscar(), Favoritos(), Perfil()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: screens[selectedIndex],
      ),
    );
  }

  Column homeScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Header(), title(), Tabs(), MoviesCarousel()],
    );
  }

  CarouselSlider MoviesCarousel() {
    return CarouselSlider(
        items: imagesList
            .map((item) => Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    peliculaPage(pelicula: item)));
                      },
                      child: Center(
                        child: Image.asset(
                          item.urlImage,
                          width: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  }),
                ))
            .toList(),
        options: CarouselOptions(
          autoPlay: false,
          aspectRatio: 1.0,
          enlargeCenterPage: true,
        ));
  }

  Padding Tabs() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                tabSelected = 1;
              });
            },
            child: Text(
              "Popular",
              style: TextStyle(
                  color: tabSelected == 1 ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                tabSelected = 2;
              });
            },
            child: Text(
              "Nuevo",
              style: TextStyle(
                  color: tabSelected == 2 ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                tabSelected = 3;
              });
            },
            child: Text(
              "Premiere",
              style: TextStyle(
                  color: tabSelected == 3 ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                tabSelected = 4;
              });
            },
            child: Text(
              "Randon",
              style: TextStyle(
                  color: tabSelected == 4 ? Colors.yellow : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        "Peliculas",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding Header() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        Text(
          "MovieFactory",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: CircleAvatar(
            radius: 48,
            backgroundImage: AssetImage('assets/perfil.jpg'),
          ),
        )
      ]),
    );
  }
}
