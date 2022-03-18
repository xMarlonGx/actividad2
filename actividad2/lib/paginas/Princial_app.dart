// ignore_for_file: prefer_const_constructors

import 'package:actividad2/paginas/home.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _paginaActual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: footer(),
      body: getPaginas(),
    );
  }

  Widget footer() {
    List items = [
      Icons.home,
      Icons.search,
      Icons.favorite,
      Icons.account_circle_rounded
    ];
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  _paginaActual = index;
                });
              },
              icon: Icon(
                items[index],
                color: _paginaActual == index
                    ? Color.fromARGB(255, 138, 81, 236)
                    : Colors.grey,
              ),
              iconSize: 30,
            );
          }),
        ),
      ),
    );
  }

  Widget getPaginas() {
    return IndexedStack(
      index: _paginaActual,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Home(),
        Center(
          child: Text(
            "Home",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 138, 81, 236),
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Busqueda",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 138, 81, 236),
                fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Usuario",
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 138, 81, 236),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
