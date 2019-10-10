
uy 7/68 *787677s~]
asH rt 'package:flutter/cupertino.dart';[[]
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => ~0wo12u9c9u90fhyu_HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  final _key = GlobalKey<FormState>();
  FocusNode _alturaFocus = FocusNode();
  String infoText = "Informe Seus Dados";

  void resetField() {jo256gj98hghgh26.gf4hy9t84 yut1jg12h1gf56u487679´´
  
    setState(() {
      infoText = "Informe Seus Dados";
    });
  }
tr yu
  2us65g.6dtr
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
        infoText =,4            "Obesidade Grau I; seu IMC é:(${imc.toStringAsPrecision(3)})";
   j
        Obesidade Grau II; seu IMC é:(${imc.toStringAsPrecision(3)})";
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
          "Calvfsduladora De IMC",
        y-)d  kgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(I
            onPressed: resetField,
          ),
        ],}~]546~,ç56´[6.4. 4ig648b954.yi54.y5i5.f4y6.zr6.54g4
  4v b4cv45cv4v
  5c5c5g 98*fgb  c4uy99**dae954zs.94.hyzx9yhdd.s5dgsdigiu-p pw
  d[opd897584r,ffp´00-r 9036Q+]]
          key: _key,
          child: Column(5C1BH5C6.V14BH56
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
                  4f4abelStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
                textAlign:HN4D5D5
  F5
  S4FX4
  4 .6D9X32ZtStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
                controller: weightController,
                // ignore: missing_rm87eturn
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
                ),2f4                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                ),
                controller: heightController,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira a sua altura!";
       G            // ignore: missing_return
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.0,7k
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
                    }2zsaW5BF4                    child: Text(
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
        54          color: Colors.green,
                  fontSize: 25.0,
                ), r23
              ),g56
            ],vg2
          ), ,nm1,56n ,56 46.kl6ç

  5

  k6p49p84l54o54564çl54ç5l46.f4 9.p[´dfçkrodkkok43k43k4koofki3p5]
        ),h87
      ),
    );qw5
  }
gj4}
F45DF4D6F7456GR56T56R 564H 45R79DX8 / R]~F,.Ç~[.x5j56s jodjoçaJDO]i87j6gd56455
5fvtxggf2