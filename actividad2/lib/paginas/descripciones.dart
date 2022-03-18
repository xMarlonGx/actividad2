import 'package:actividad2/constantes/const.dart';
import 'package:flutter/material.dart';
import 'package:actividad2/paginas/Princial_app.dart';

class Descripcion extends StatefulWidget {
  final dynamic descip;

  Descripcion({Key? key, this.descip}) : super(key: key);

  @override
  State<Descripcion> createState() => _DescripcionState();
}

class _DescripcionState extends State<Descripcion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(111, 67, 27, 114),
        title: Text(
          "Descripciones",
          style: TextStyle(color: Colors.deepPurple),
        ),
      ),
      body: MostrarDescipcion(),
    );
  }

  Widget MostrarDescipcion() {
    var tamanio = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: tamanio.width,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.descip['img'])),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                child: Text(
                  widget.descip['nombre'],
                  style: TextStyle(
                      color: Color.fromARGB(255, 138, 81, 236),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                child: Text(
                  widget.descip['descripcion'],
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 36, 99),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          // bloque
          SizedBox(
            height: 30,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
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
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(animales.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {},
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
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
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
                      onTap: () {},
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
