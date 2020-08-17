import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class Administrator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Administrador")),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    color: Colors.grey[300],
                    offset: Offset(0,0)
                  )]
                ),
                child: Column(
                  children: [
                    Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) 
                      return 'Por favor ingresa tu nombre de usuario';
                      else return '';
                    
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Usuario",
                    hintStyle: TextStyle(color:Colors.grey[400])
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) 
                      return 'Por favor ingresa tu nombre de usuario';
                      else return '';
                    
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Contraseña",
                    hintStyle: TextStyle(color:Colors.grey[400])
                  ),
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
                  onPressed: (){},
                  child: Text("Iniciar Sesión",style: TextStyle(color:Colors.white),),
                ),
              )
            ],
          ),
        ));
  }
}
