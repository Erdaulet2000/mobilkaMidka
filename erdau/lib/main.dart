import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(

    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Профиль'),
          centerTitle: true,
          actions: [
            GestureDetector(
              child: Icon(Icons.logout),
              onTap: () {
                print("Leading icon on tap");
              },
            ),
            SizedBox(width: 16),
          ],
        ),

        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,
                          width: 3.0),
                      borderRadius: BorderRadius.all(
                          Radius.circular(30.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'имя',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 1,
                  ),
                ),
                child:Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.black,// set border color
                          width: 3.0),   // set border width
                      borderRadius: BorderRadius.all(
                          Radius.circular(30.0)), // set rounded corner radius
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'телефон',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("История добавления товара"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.indigo,
                    onSurface: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                    elevation: 20,
                    minimumSize: Size(100,50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed:() {
                  },
                ),
              ],
            ))
    );
  }
}






