import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

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
        const CustomScrollView(
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
            /*( FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance.collection("home").orderBy("pos").get(),
              builder: (context, snapshot){
                if (!snapshot.hasData)
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 200.0,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  );
                else
                  print

              },
            )*/
          ],
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
