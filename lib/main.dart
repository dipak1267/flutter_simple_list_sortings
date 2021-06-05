import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    ls(lastname: 'ramoiya', firstname: 'dipak', userid: '1',dates: 1037385000000 ),
    ls(lastname: 'jani', firstname: 'yash', userid: '2',dates: 1008095400000),
    ls(lastname: 'vaghasiya', firstname: 'parth', userid: '3',dates: 1323628200000),
    ls(lastname: 'vaghasiya', firstname: 'raj', userid: '3',dates: 1037345000000),
    ls(lastname: 'kasundra', firstname: 'manthan', userid: '5',dates: 1437385000000),
    ls(lastname: 'chauhan', firstname: 'dharmik', userid: '6',dates: 1037386000000),
    ls(lastname: 'bhut', firstname: 'jigar', userid: '7',dates: 1057385000000),
    ls(lastname: 'bharodiya', firstname: 'dhaval', userid: '8',dates: 1037385000000),
    ls(lastname: 'bharodiya', firstname: 'pratik', userid: '9',dates: 1037385000000),
    ls(lastname: 'sarola', firstname: 'brijesh', userid: '10',dates: 1037385000000),
    ls(lastname: 'anghan', firstname: 'brijesh', userid: '12',dates: 1037385000000),
    ls(lastname: 'anghan', firstname: 'bhavesh', userid: '13',dates: 1037385000000),
    ls(lastname: 'anghan', firstname: 'vishal', userid: '14',dates: 1323628200000),
    ls(lastname: 'dobariya', firstname: 'bhargav', userid: '15',dates: 1101925800000),
    ls(lastname: 'sarola', firstname: 'arun', userid: '16',dates: 976559400000),
    ls(lastname: 'dobariya', firstname: 'utsav', userid: '17',dates: 1037385000000),
    ls(lastname: 'radadiya', firstname: 'abhishek', userid: '18',dates: 1037385000000),
    ls(lastname: 'dholiya', firstname: 'bhautik', userid: '19',dates: 1137385000000),
    ls(lastname: 'yadav', firstname: 'niraj', userid: '20',dates: 1323627200000),
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
                list.sort((a,b) => b.dates.compareTo(a.dates));
              }
              else {
                list.sort((a,b) => a.dates.compareTo(b.dates));
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
            child: Text( "  Id:- ${list[index].userid}   \n  First Name:-${list[index].firstname}     \n  Lastname:-${list[index].lastname} \n Birthday:-${DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(list[index].dates)) }",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
          );
        });
  }

}
