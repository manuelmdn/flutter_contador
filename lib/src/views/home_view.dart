import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  final textStyle = new TextStyle(fontSize: 30);
  final count = 10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white70,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks',style: textStyle,),
            Text('$count', style: textStyle)
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add) ,
        onPressed: (){

        },

      ),

    );
  }

}