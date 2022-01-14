import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Name', style: TextStyle(fontSize: 20, backgroundColor: Colors.cyan,fontWeight: FontWeight.bold,),),),
                    DataColumn(label: Text('Picture', style: TextStyle(fontSize: 20, backgroundColor: Colors.cyan,fontWeight: FontWeight.bold,),),),
                    DataColumn(label: Text('Age', style: TextStyle(fontSize: 20, backgroundColor: Colors.cyan,fontWeight: FontWeight.bold,),),),
                    DataColumn(label: Text('Mobile', style: TextStyle(fontSize: 20, backgroundColor: Colors.cyan,fontWeight: FontWeight.bold,),),),
                    DataColumn(label: Text('Country', style: TextStyle(fontSize: 20, backgroundColor: Colors.cyan,fontWeight: FontWeight.bold,),),),

                  ],

                  rows:[
                    DataRow(cells: [
                      DataCell(Text('Arif Chad')),
                      DataCell(Icon(Icons.person_pin_circle)),
                      DataCell(Text('28')),
                      DataCell(Text('01684137262')),
                      DataCell(Text('BD')),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Arif Chad')),
                      DataCell(Icon(Icons.person_pin)),
                      DataCell(Text('28')),
                      DataCell(Text('01684137262')),
                      DataCell(Text('BD')),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Arif Chad')),
                      DataCell(Icon(Icons.person)),
                      DataCell(Text('28')),
                      DataCell(Text('01684137262')),
                      DataCell(Text('BD')),

                    ]),
                    DataRow(cells: [
                      DataCell(Text('Arif Chad')),
                      DataCell(Icon(Icons.person_sharp)),
                      DataCell(Text('28')),
                      DataCell(Text('01684137262')),
                      DataCell(Text('BD')),

                    ]),
                  ],
                  dataTextStyle: TextStyle(fontSize: 20, backgroundColor: Colors.grey,color: Colors.white60,letterSpacing: 1,),

                ),


              )
            ],

          ),
        ),
      ),
    );
  }
}

