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

  var date = [];
  List<ls> list = [
    ls(lastname: 'ramoiya', firstname: 'dipak', userid: '1',dates: "2002/11/16"),
    ls(lastname: 'jani', firstname: 'yash', userid: '2',dates: "2001/04/22"),
    ls(lastname: 'vaghasiya', firstname: 'parth', userid: '3',dates: "2001/07/11"),
    ls(lastname: 'vaghasiya', firstname: 'raj', userid: '3',dates: "2008/04/20"),
    ls(lastname: 'kasundra', firstname: 'manthan', userid: '5',dates: "2014/09/14"),
    ls(lastname: 'chauhan', firstname: 'dharmik', userid: '6',dates: "2015/05/03"),
    ls(lastname: 'bhut', firstname: 'jigar', userid: '7',dates: "2001/07/11"),
    ls(lastname: 'bharodiya', firstname: 'dhaval', userid: '8',dates:"2005/08/08"),
    ls(lastname: 'bharodiya', firstname: 'pratik', userid: '9',dates: "2003/04/01"),
    ls(lastname: 'sarola', firstname: 'brijesh', userid: '10',dates: "2009/07/21"),
    ls(lastname: 'anghan', firstname: 'brijesh', userid: '12',dates: "2017/09/26"),
    ls(lastname: 'anghan', firstname: 'bhavesh', userid: '13',dates:"2010/07/24"),
    ls(lastname: 'anghan', firstname: 'vishal', userid: '14',dates: "2009/02/21"),
    ls(lastname: 'dobariya', firstname: 'bhargav', userid: '15',dates:"2000/07/11"),
    ls(lastname: 'sarola', firstname: 'arun', userid: '16',dates: "2009/01/29"),
    ls(lastname: 'dobariya', firstname: 'utsav', userid: '17',dates: "2005/07/22"),
    ls(lastname: 'radadiya', firstname: 'abhishek', userid: '18',dates:"2011/07/01"),
    ls(lastname: 'dholiya', firstname: 'bhautik', userid: '19',dates: "2002/09/11"),
    ls(lastname: 'yadav', firstname: 'niraj', userid: '20',dates: "2004/07/26"),
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
                // DateTime.parse(dates).millisecondsSinceEpoch
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
          var  uad =  DateTime.parse(list[index].dates).millisecondsSinceEpoch;
          return Card(
            elevation: 10,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text( "  Id:- ${list[index].userid}   \n  First Name:-${list[index].firstname}     \n  Lastname:-${list[index].lastname} \n Birthday:-${DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(uad))}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
            ],
            ),
          );
        });
  }

}
