import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _primeiroNumeroController = TextEditingController();
  TextEditingController _segundoNumeroController = TextEditingController();

  _soma() {
    var primeroNumero = _primeiroNumeroController.text;
    var segundoNumero = _segundoNumeroController.text;

    var resultado = int.parse(primeroNumero) + int.parse(segundoNumero);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFFFFCDD2),
          // Retorna o texto que foi informado
          // usando o TextEditingController.
          content: Text(resultado.toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              textAlign: TextAlign.center),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Py Calc"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Número 1",
                    ),
                    controller: _primeiroNumeroController,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Número 2",
                      ),
                      controller: _segundoNumeroController,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                          child: Text(
                            "Soma",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Colors.green,
                          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                          onPressed: _soma),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
