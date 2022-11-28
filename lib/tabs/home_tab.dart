
import 'package:custom_grid_view/custom_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);
//final numbers = List.generate(100, => '$index');
  
  @override
  Widget build(BuildContext context) {

    Widget _buildBodyBack() =>Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black54,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )
      ),
    );
    return Stack(
      children: <Widget>[
        _buildBodyBack(),
         CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('13 de Maio'),
                centerTitle: true,
              ),
            ),
           ],
        ),

        Container(
          margin: const EdgeInsets.only(top: 80.0),
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           children: [
             Image(image:AssetImage("assets/imagens/corte1.png"),),
             Image(image:AssetImage("assets/imagens/corte2.png"),),
             Image(image:AssetImage("assets/imagens/corte3.png"),),
             Image(image:AssetImage("assets/imagens/corte4.png"),),
             Image(image:AssetImage("assets/imagens/corte5.png"),),
             Image(image:AssetImage("assets/imagens/corte6.png"),),
             Image(image:AssetImage("assets/imagens/corte7.png"),),
             Image(image:AssetImage("assets/imagens/corte8.png"),),
             Image(image:AssetImage("assets/imagens/corte9.png"),),
             Image(image:AssetImage("assets/imagens/corte10.png"),),

           ],),
        ),

        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(20),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ('/barbeiro'),
              );
            },
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.red.shade900)),
            child: const Text(
              "Agende seu horario",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,


              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}




