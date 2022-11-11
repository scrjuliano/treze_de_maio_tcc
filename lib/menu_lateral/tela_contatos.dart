import 'package:flutter/material.dart';

import '../tiles/drawer_tile.dart';

class TelaContato extends StatelessWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 50,),
          Text(
            "Whatsapp",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),

          ),
          SizedBox(height: 20,),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.green,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.whatsapp),
              iconSize: 48,
              color: Colors.white,
              onPressed: null,

            ),
          ),
          SizedBox(height: 50,),
          Text(
            "Facebook",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),

          ),
          SizedBox(height: 20,),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.blueAccent,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.facebook),
              iconSize: 48,
              color: Colors.white,
              onPressed: null,

            ),
          ),
          SizedBox(height: 50,),
          Text(
            "Instagram",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),

          ),
          SizedBox(height: 20,),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.pinkAccent,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.camera_alt_rounded),
              iconSize: 48,
              color: Colors.white,
              onPressed: null,

            ),
          ),


  ]
      ),
    );
  }
  }