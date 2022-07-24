import 'package:flutter/material.dart';
import 'package:pm_kishan_app/utils/drawer.dart';
import 'package:share/share.dart';
import './startpage.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void shareApp() async {
    Share.share('https://play.google.com/store/apps/details?id=com.pm_kisan_samman_nidhi_yojna_app',subject: 'PM Kishan Yojana');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PM Kishan Yojana',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),),
        actions: [
         IconButton(onPressed: () async {
           shareApp();
         }, icon: Icon(Icons.share),color: Colors.white),
        ],
      ),
      drawer: Mydrawer(),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            shape: BoxShape.rectangle,
            color: Colors.white,
          gradient:LinearGradient(
            colors: [Colors.white,Colors.orange,Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Container(width: 95,height: 95,child: Image.asset('assets/icons/app_logo.png',fit: BoxFit.cover,)),
                textColor: Colors.black,
                title: Text("प्रधानमंत्री किसान सम्मान निधि योजना",),
                subtitle: Text('_____________________'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
              children: [
                    Container(
                           ),
                         ],
                   ),
             ),
          ],
        ),
      ),
    );
  }
}
