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
  return Container(
    height: 40,
    width: 250,
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(hintText: 'Nome',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context){
  return Container(
    height: 40,
    width: 250,
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(hintText: 'E-mail',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context){
  return Container(
    height: 40,
    width: 250,
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(hintText: 'Telefone',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}