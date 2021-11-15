import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = '';
  int index=0;
  List<String> collections=["Flutter","es","Maravilloso"];

  void onPressButton(){
    setState(() {
      flutterText=collections[index];
      index=index<2?index+1:index=0;
    });
  }
  void sumaButton(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 2"),
      ),
      body: Container(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),

              TextFormField(decoration: const InputDecoration(hintText: 'Numero 1')),
              TextFormField(decoration: const InputDecoration(hintText: 'Numero 2')),
              RaisedButton(
                  child: Text("Suma",style: TextStyle(color: Colors.white),),
                  color: Colors.blueAccent,
                  onPressed: sumaButton),
              RaisedButton(
                  child: Text("Resta",style: TextStyle(color: Colors.white),),
                  color: Colors.blueAccent,
                  onPressed: sumaButton),
              RaisedButton(
                  child: Text("Multiplicar",style: TextStyle(color: Colors.white),),
                  color: Colors.blueAccent,
                  onPressed: sumaButton),
              RaisedButton(
                  child: Text("Dividir",style: TextStyle(color: Colors.white),),
                  color: Colors.blueAccent,
                  onPressed: sumaButton),
            ],
          ),
        ),
      ),
    );
  }
}