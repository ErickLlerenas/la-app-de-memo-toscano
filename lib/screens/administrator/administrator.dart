import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/administrator_home.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class Administrator extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Administrador")),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Inicia Sesión",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          spreadRadius: 0,
                          color: Colors.grey[300],
                          offset: Offset(0, 0))
                    ]),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Por favor ingresa el usuario';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Usuario",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Por favor ingresa la contraseña';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Contraseña",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 50,
                    child: FlatButton(
                      color: Colors.pink[700],
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdministratorHome()));
                        }
                      },
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
