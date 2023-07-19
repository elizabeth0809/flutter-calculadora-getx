import 'package:flutter/material.dart';

class MainResultText extends StatelessWidget {

  final String text;

  const MainResultText({ 
    Key? key, 
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( bottom: 20 ),
      width: double.infinity,
      alignment: Alignment.centerRight,
      //el boxfit hace que el contenido se alarge o se haga mas pequeño a medida que se ingrese mas caracteres
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text( this.text , style: TextStyle(fontSize: 50 ) )),
    );
  }
}