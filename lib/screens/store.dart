import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Tienda del pueblo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('Pétalo D/4', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                  '\$10.00',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text(' 1 KG Azúcar', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '\$20.00',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('1 KG Frijol Bayo', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '\$26.00',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('1 KG Frijol Negro', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '\$26.00',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: Text('1 KG Arroz',
                      style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '\$16.00',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Carpeta de huevos',
                  style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '\$38.00',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('1 Litro de Jugo', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '\$5.00',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Leche D/Bolsa', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '\$8.00',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
              color: Colors.grey[100],
              child: ListTile(
                title: Text('3 Leches + 1 Jugo',
                    style: TextStyle(color: Colors.grey[800])),
                leading: Text(
                  '\$27.00',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
