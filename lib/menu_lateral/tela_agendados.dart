import 'package:flutter/material.dart';

import '../tiles/drawer_tile.dart';

class TelaAgenda extends StatelessWidget {
  const TelaAgenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Material(
        color: Colors.black,
        child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Text(
                "Horarios agendados:",
                textAlign: TextAlign.center ,
              style: TextStyle(
                color: Colors.white,
              ),),
              Container(
                height: 200,
                child: Card(

                    margin: EdgeInsets.all(20),
                    child: Container(
                      //padding: EdgeInsets.only(top: 110, left: 60, right: 60, bottom: 10),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                              "Profissional: ",
                          textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 12.0,),
                          Row(

                             children: <Widget>[
                               Text(
                                   "Serviço: ",
                                 textAlign: TextAlign.start,
                                 style: TextStyle(fontWeight: FontWeight.w500),
                               )
                             ],
                          ),
                          SizedBox(height: 12.0,),
                          Row(
                            children: <Widget>[
                              Text(
                                "Horario: ",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(height: 30.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text('Confirmação'),
                                        content: Text('Tem certeza que deseja cancelar este horario? '
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text('Sim'),
                                            onPressed: ()=>  Navigator.pushNamed(
                                              context,
                                              ('/home'),
                                            ),
                                          ),
                                          TextButton(
                                            child: Text('Não'),
                                            onPressed: ()=> Navigator.pop(context),
                                          )
                                        ],
                                      )
                                  );

                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.red.shade900)),
                                child: const Text(
                                  "Cancelar agendamento ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                ),
              ),



            ]
        ),
      ),
      );


  }
}