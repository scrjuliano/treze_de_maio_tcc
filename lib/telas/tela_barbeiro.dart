import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';

import '../widgets/custom_drawer.dart';



class Telabarbeiro extends StatelessWidget {
  Telabarbeiro({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Serviços',
        textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ),
      body: Padding(padding: EdgeInsets.all(0),
      child: Container(
        child: Material(
          color: Colors.black,
          child: Stack(
              children: [
                Container(
                  child: Text("Escolha seu Barbeiro:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,


                    ),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(50),
                  margin: EdgeInsets.all(20),

                ),

                Container(

                  height: 300,
                  child:
                  ListWheelScrollView(
                    itemExtent: 50,
                    physics: FixedExtentScrollPhysics(),
                    diameterRatio: 0.4,
                    perspective: 0.009,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Diego",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Igor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Jhow",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Krigor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                    ],
                  ),
                ),



                Container(
                  child: Text("Escolha seu serviço:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(50),
                  margin: EdgeInsets.all(20),
                ),

                Container(
                  height: 1000,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: 150, left: 0, right: 0, bottom: 0),
                  margin: EdgeInsets.all(20),

                  child:

                  ListWheelScrollView(
                    itemExtent: 50,
                    physics: FixedExtentScrollPhysics(),
                    diameterRatio: 0.4,
                    perspective: 0.009,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Cabelo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Barba",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Sombrancelha",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 7.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ('/agenda'),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade900)),
                        child: const Text(
                          "Completo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ('/agenda'),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.red.shade900)),
                    child: const Text(
                      "Agendar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ]
          ),
        ),
      ),),
    );

  }

}

