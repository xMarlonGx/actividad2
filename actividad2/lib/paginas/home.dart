import 'package:actividad2/constantes/const.dart';
import 'package:actividad2/paginas/descripciones.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activoMenu1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: mostrargetAppBar(),
        backgroundColor: Colors.white,
      ),
      body: bodyapp(),
    );
  }

  Widget mostrargetAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Music",
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.no_accounts,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyapp() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Bloque 1

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(menu_home.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              activoMenu1 = index;
                            });
                          },
                          child: Text(
                            menu_home[index],
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.white,
                              elevation: 0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(35.0),
                              ),
                              primary: activoMenu1 == index
                                  ? Color.fromARGB(255, 138, 81, 236)
                                  : Colors.white,
                              onPrimary: activoMenu1 == index
                                  ? Colors.white
                                  : Color.fromARGB(255, 138, 81, 236)),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // BLOQUE 2

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(paisajes.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: Descripcion(
                                  descip: paisajes[index],
                                ),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: 385,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 151, 149, 149),
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                    image: AssetImage(paisajes[index]['img']),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          // BLOQUE 3

          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Text(
                "Animales",
                style: TextStyle(
                    color: Color.fromARGB(255, 138, 81, 236),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          // BLOQUE 4

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(animales.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: Descripcion(
                                  descip: animales[index],
                                ),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(animales[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              animales[index]['nombre'],
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          //Bloque 5

          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Text(
                "Paisajes",
                style: TextStyle(
                    color: Color.fromARGB(255, 138, 81, 236),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          // BLOQUE 6

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(vertical.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                child: Descripcion(
                                  descip: vertical[index],
                                ),
                                type: PageTransitionType.scale));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 275,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(vertical[index]['img']),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
