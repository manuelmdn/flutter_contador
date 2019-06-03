import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountPage extends StatefulWidget {

  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  final _textStyle = new TextStyle(fontSize: 30);
  int _count = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        brightness: Brightness.dark,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps',style: _textStyle,),
            Text('$_count', style: _textStyle)
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop ,
      floatingActionButton: _drawBottons()

    );
  }

  Widget _drawBottons(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero),backgroundColor: Colors.red, onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), backgroundColor: Colors.deepPurple, onPressed: _remove),
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.add), backgroundColor: Colors.deepPurple,onPressed: _add ),

      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }

}