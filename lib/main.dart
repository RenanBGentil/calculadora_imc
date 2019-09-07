import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  final _key = GlobalKey<FormState>();
  FocusNode _alturaFocus = FocusNode();
  String infoText = "Informe Seus Dados";

  void resetField() {
    weightController.text = "";
    heightController.text = "";
    _key.currentState.reset();
    setState(() {
      infoText = "Informe Seus Dados";
    });
  }

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    _key.currentState.dispose();
    _alturaFocus.dispose();
    super.dispose();
  }

  void calculate() {
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      print(imc);
      if (imc < 18.6) {
        infoText = "Abaixo Do Peso; seu IMC é:(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.6 && imc < 24.9) {
        infoText = "Peso Ideal; seu IMC é:(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 24.9 && imc < 29.9) {
        infoText =
            "Levevemente Acima Do Peso; seu IMC é:(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 39.9 && imc < 34.9) {
        infoText =
            "Obesidade Grau I; seu IMC é:(${imc.toStringAsPrecision(3)})";
      } else if (imc >= 34.9 && imc < 39.9) {
        infoText =
            "Obesidade Grau II; seu IMC é:(${imc.toStringAsPrecision(3)})";
      } else {
        infoText =
            "Obesidade Grau III; seu IMC é:(${imc.toStringAsPrecision(3)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora De IMC",
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: resetField,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                size: 180,
                color: Colors.green,
              ),
              TextFormField(
                onFieldSubmitted: (_){
                  FocusScope.of(context).requestFocus(_alturaFocus);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Peso(kg)",
                  labelStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
                controller: weightController,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira o seu peso!";
                  }
                },
              ),
              TextFormField(
                focusNode: _alturaFocus,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Altura(cm)",
                  labelStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
                controller: heightController,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira a sua altura!";
                    // ignore: missing_return
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      if (_key.currentState.validate()) {
                        calculate();
                      }
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "$infoText",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
