import 'package:flutter/material.dart';




Widget pagina3(pgController) {
  return Container(
      color: Colors.green,
      child: Column(

        children: <Widget>[
          Text("Página 3",style: TextStyle(color: Colors.white)),
          FlatButton(
            color: Colors.white,
              onPressed: () {
                pgController.animateToPage(0, duration: Duration(seconds: 1),curve: Curves.decelerate);
                //Navigator.push(context, route)
              },
              child: Text("Página 1")
          )
        ],

      )
  );
}