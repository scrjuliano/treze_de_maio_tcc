import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  const CaixaTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_createTextFieldName(context),_createTextFieldEmail(context),_createTextFieldPhone(context)

      ],
    );
  }
}


Widget _createTextFieldName(BuildContext context){
  return Stack(
    children: [
      Container(
        child: Text(
          "Nome"
        ),
      ),

      Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
        child: ListTile(
          title: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(hintText: '',
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      )
    ],
  );
}

Widget _createTextFieldEmail(BuildContext context){
  return Stack(
    children: [
      Container(
        child: Text(
          "E-mail"
        ),
      ),
    Container(
    height: 40,
    width: 250,
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(hintText: '',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  )
    ],
  );
}

Widget _createTextFieldPhone(BuildContext context){
  return Stack(
    children: [
      Container(
        child: Text(
          "Telefone"
        ),
      ),
    Container(
    height: 40,
    width: 250,
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(hintText: '',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  )
    ],
  );
}