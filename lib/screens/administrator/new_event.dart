import 'package:flutter/material.dart';

class NewEvent extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Nuevo evento"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ButtonTheme(
                height: size.width,
                minWidth: size.width,
                child: FlatButton(
                  color: Colors.white,
                  child: Icon(Icons.add_photo_alternate,
                      color: Colors.grey, size: 150),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingresa el título';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Título",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingresa la fecha';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Fecha",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingresa la descripción corta';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Descripción corta",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  maxLines: 30,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor ingresa la descripción completa';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Descripción completa",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 200,
                height: 60,
                child: FlatButton(
                  child: Text(
                    "Guardar",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.pink[800],
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
