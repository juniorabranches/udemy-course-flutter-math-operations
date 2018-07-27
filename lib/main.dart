import 'package:flutter/material.dart';

class OperacoesMatematicas extends StatelessWidget {

  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context){

    TextField firstNumberField = TextField(
      decoration: InputDecoration(
          labelText: 'First Number'
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        try {
          number1 = double.parse(value);
        } catch (ex) {
          number1 = 0.0;
        }
      },
    );

    TextField secondNumberField = TextField(
      decoration: InputDecoration(
          labelText: 'Second Number'
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        try {
          number2 = double.parse(value);
        } catch (ex) {
          number2 = 0.0;
        }
      },
    );

    RaisedButton calcButton = RaisedButton(
      child: Text('Calc'),
      onPressed: () {
        double add = number1 + number2;
        double sub = number1 - number2;
        AlertDialog resultDialog = AlertDialog(
          content: Text('Results: add = $add & sub = $sub')
        );
        showDialog(context: context, child: resultDialog);
      },
    );

    Container container = Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          firstNumberField,
          secondNumberField,
          calcButton
        ],
      )
    );

    AppBar appBar = AppBar(
      title: Text('Operações Matemáticas')
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      body: container
    );

    return scaffold;
  }
}

void main(){
  runApp(MaterialApp(
      title: 'Operações Matemáticas',
      home: OperacoesMatematicas()
  ));
}