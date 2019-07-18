import 'package:flutter/material.dart';
import 'pagina3.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController pgController = PageController(
    initialPage: 0,
  );

  //PageController _controller = PageController(initialPage: 0, keepPage: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page View"),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: true,
          controller: pgController,
          children: <Widget>[
            pagina1(),
            pagina2(),
            pagina3(pgController)
          ],
        )
    );
  }


  Widget pagina1() {
    return Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Text("Página 1", style: TextStyle(color: Colors.white),),
            FlatButton(
                onPressed: () {
                  pgController.animateToPage(1, duration: Duration(seconds: 1),curve: Curves.bounceOut);
                  //Navigator.push(context, route)
                },
                child: Text("Página 2")
            )
          ],

        )
    );
  }

  Widget pagina2() {
    return Container(
        color: Colors.red,
        child: Column(

          children: <Widget>[

            Text("Página 2", style: TextStyle(color: Colors.white),),
            FlatButton(
              color: Colors.white,
                onPressed: () {
                  pgController.animateToPage(2, duration: Duration(seconds: 1),curve: Curves.elasticIn);
                  //Navigator.push(context, route)
                },
                child: Text("Página 3")
            )
          ],

        )
    );
  }


}

