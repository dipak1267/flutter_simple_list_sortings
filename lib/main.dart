import 'dart:convert';
import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(MaterialApp(
    home: MyCrude(),
  ));
}

class MyCrude extends StatefulWidget {

  @override
  _MyCrudeState createState() => _MyCrudeState();
}

class _MyCrudeState extends State<MyCrude> {
  @override


  List<ls> list = [
    ls(lastname: 'ramoiya', firstname: 'dipak', userid: '1'),
    ls(lastname: 'jani', firstname: 'yash', userid: '2'),
    ls(lastname: 'vaghasiya', firstname: 'parth', userid: '3'),
    ls(lastname: 'vaghasiya', firstname: 'raj', userid: '3'),
    ls(lastname: 'kasundra', firstname: 'manthan', userid: '5'),
    ls(lastname: 'chauhan', firstname: 'dharmik', userid: '6'),
    ls(lastname: 'bhut', firstname: 'jigar', userid: '7'),
    ls(lastname: 'bharodiya', firstname: 'dhaval', userid: '8'),
    ls(lastname: 'bharodiya', firstname: 'pratik', userid: '9'),
    ls(lastname: 'sarola', firstname: 'brijesh', userid: '10'),
    ls(lastname: 'anghan', firstname: 'brijesh', userid: '12'),
    ls(lastname: 'anghan', firstname: 'bhavesh', userid: '13'),
    ls(lastname: 'anghan', firstname: 'vishal', userid: '14'),
    ls(lastname: 'dobariya', firstname: 'bhargav', userid: '15'),
    ls(lastname: 'sarola', firstname: 'arun', userid: '16'),
    ls(lastname: 'dobariya', firstname: 'utsav', userid: '17'),
    ls(lastname: 'radadiya', firstname: 'abhishek', userid: '18'),
    ls(lastname: 'dholiya', firstname: 'bhautik', userid: '19'),
    ls(lastname: 'yadav', firstname: 'niraj', userid: '20'),
  ];

  bool isrev = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          setState(() {
              if(isrev){
                list.sort((a,b) => b.firstname.compareTo(a.firstname));
              }
              else {
                list.sort((a,b) => a.firstname.compareTo(b.firstname));
              }
             isrev = !isrev;
          });
        },icon: isrev ? Icon(Icons.arrow_circle_down) : Icon(Icons.arrow_circle_up)),
        title: isrev ? Text("ascending") : Text("descending"),
      ),
      body: buildbody() ,
    );
  }


  Widget buildbody() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (BuildContext context,index){
          return Card(
            elevation: 10,
            child: Text( "  Id:- ${list[index].userid}   \n  First Name:-${list[index].firstname}     \n  Lastname:-${list[index].lastname}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          );
        });
  }
}
