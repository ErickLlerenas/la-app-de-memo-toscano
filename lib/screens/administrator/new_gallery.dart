import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class NewGallery extends StatefulWidget {
  final String type;
  NewGallery({this.type});
  @override
  _NewGalleryState createState() => _NewGalleryState();
}

class _NewGalleryState extends State<NewGallery> {
  bool loading = false;
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    try {
      final pickedFile =
          await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

      setState(() {
        _image = File(pickedFile.path);
      });
    } catch (error) {}
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              "Foto creada!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            content: Container(
              height: 200,
              child: Column(
                children: [
                  Icon(
                    Icons.done,
                    color: Colors.teal,
                    size: 80,
                  ),
                  Text(
                    "Se ha creado y publicado la foto con éxito.",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
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
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: widget.type == "gallery" ?Text("Nueva foto social") : widget.type == "gallery_legislative" ? Text("Nueva foto legislativa") : Text("Nueva foto deportiva"),
      ),
      body: SingleChildScrollView(
        child: Form(
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
              SizedBox(height: 100),
              _image!=null ? (!loading
                  ? ButtonTheme(
                      minWidth: size.width,
                      height: 60,
                      child: FlatButton(
                        child: Text(
                          "Subir nueva foto",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.pink[800],
                        onPressed: () async {
                          if (_image != null) {
                            setState(() {
                              loading = true;
                            });
                            final StorageReference storageReference =
                                FirebaseStorage().ref().child(
                                    DateTime.now().year.toString() +
                                        DateTime.now().month.toString() +
                                        DateTime.now().day.toString() +
                                        DateTime.now().hour.toString() +
                                        DateTime.now().minute.toString() +
                                        DateTime.now().second.toString());

                            final StorageUploadTask uploadTask =
                                storageReference.putFile(_image);
                            String url = await (await uploadTask.onComplete)
                                .ref
                                .getDownloadURL();

                            Firestore.instance
                                .collection('${widget.type}')
                                .document(DateTime.now().year.toString() +
                                    DateTime.now().month.toString() +
                                    DateTime.now().day.toString() +
                                    DateTime.now().hour.toString() +
                                    DateTime.now().minute.toString() +
                                    DateTime.now().second.toString())
                                .setData({
                              // 'date': DateTime.now(),
                              'image': url
                            }).then((value) => {
                                      _showDialog(),
                                      setState(() {
                                        loading = false;
                                      })
                                    });
                          }
                        },
                      ),
                    )
                  : LinearProgressIndicator(
                      minHeight: 60,
                      backgroundColor: Colors.pink[600],
                      valueColor: AlwaysStoppedAnimation(Colors.pink[800]))):Container()
            ],
          ),
        ),
      ),
    );
  }
}
