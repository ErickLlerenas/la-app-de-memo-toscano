import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class NewNew extends StatefulWidget {
  @override
  _NewNewState createState() => _NewNewState();
}

class _NewNewState extends State<NewNew> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  bool loading = false;

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    try {
      final pickedFile = await picker.getImage(source: ImageSource.gallery,imageQuality: 20);
      
      setState(() {
        _image = File(pickedFile.path);
      });
    } catch (error) {
    }
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "¡Noticia creada!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          content:
              Container(
                height: 200,
                child: Column(
                  children: [
                    Icon(Icons.done,color: Colors.teal,size: 80,),
                    Text("Se ha creado y publicado la noticia con éxito.",textAlign: TextAlign.center,),
                    SizedBox(height:30),
                    FlatButton(
                color: Colors.teal,
                child: Text(
                  "VOLVER",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
            ),
                  ],
                ),
              )
          
        );
      },
    );
  }

   void _showImageMissingDialog() {
    // flutter defined function
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "¡Agrega una imagen!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          content:
              Container(
                height: 200,
                child: Column(
                  children: [
                    Icon(Icons.error,color: Colors.blueGrey,size: 80,),
                    Text("Es necesario que cada noticia tenga una imagen.",textAlign: TextAlign.center,),
                    SizedBox(height:30),
                    FlatButton(
                color: Colors.blueGrey,
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
            ),
                  ],
                ),
              )
          
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Nueva noticia"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _image == null
                  ? ButtonTheme(
                      height: size.width,
                      minWidth: size.width,
                      child: FlatButton(
                        color: Colors.white,
                        child: Icon(Icons.add_photo_alternate,
                            color: Colors.grey, size: 150),
                        onPressed: () {
                          getImage();
                        },
                      ),
                    )
                  : Image.file(_image,
                      fit: BoxFit.cover, height: size.width, width: size.width),
              SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  controller: titleController,
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
                  controller: descriptionController,
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
              !loading ? ButtonTheme(
                minWidth: size.width,
                height: 60,
                child: FlatButton(
                  child: Text(
                    "Crear nueva noticia",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.pink[800],
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      if (_image != null) {
                        setState(() {
                          loading = true;
                        });
                        final StorageReference storageReference =
                            FirebaseStorage().ref().child(DateTime.now().year.toString() +
                              DateTime.now().month.toString() +
                              DateTime.now().day.toString() +
                              DateTime.now().hour.toString() +
                              DateTime.now().minute.toString() +
                              DateTime.now().second.toString());

                        final StorageUploadTask uploadTask =
                            storageReference.putFile(_image);
                        String url = await (await uploadTask.onComplete).ref.getDownloadURL();
                      
                      Firestore.instance
                          .collection('news')
                          .document(DateTime.now().year.toString() +
                              DateTime.now().month.toString() +
                              DateTime.now().day.toString() +
                              DateTime.now().hour.toString() +
                              DateTime.now().minute.toString() +
                              DateTime.now().second.toString())
                          .setData({
                        'title': titleController.text,
                        'description': descriptionController.text,
                        'date': DateTime.now(),
                        'image': url
                      }).then((value) => {
                        _showDialog(),
                         setState(() {
                          loading = false;
                        })
                        });
                      }else{
                      _showImageMissingDialog();
                    }
                    }
                  },
                ),
              ):LinearProgressIndicator(
                minHeight: 60,
                backgroundColor: Colors.pink[600],valueColor: AlwaysStoppedAnimation(Colors.pink[800]))
            ],
          ),
        ),
      ),
    );
  }
}
