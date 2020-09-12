import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EventsInformation extends StatelessWidget {
  final Timestamp date;
  final String description;
  final String image;
  final String title;
  EventsInformation({this.date, this.description, this.image, this.title});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Eventos")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              '${this.image}',
              height: size.width,
              width: size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text("${this.title}",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold)),
            ),
            Container(
                margin: EdgeInsets.all(10),
                child: Text(
                    'Fecha del evento: ${this.date.toDate().day}/${this.date.toDate().month}/${this.date.toDate().year}',
                    style: TextStyle(color: Colors.grey[700], fontSize: 18))),
            SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  '${this.description}',
                  style: TextStyle(color: Colors.grey[700], fontSize: 17),
                  textAlign: TextAlign.justify,
                ))
          ],
        ),
      ),
    );
  }
}
