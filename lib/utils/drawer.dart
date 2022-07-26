import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {

  void shareApp() async {
    Share.share('https://play.google.com/store/apps/details?id=com.pm_kisan_samman_nidhi_yojna_app'
      ,subject: 'PM Kishan Yojana',);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/farmer.jpg",),fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.circular(0),
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.orange, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(
                    color: Colors.lightBlue,
                    width: 0,
                    style: BorderStyle.solid),
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 0,top: 110),
                // child: Text("PM Kisan Samman Nidhi",
                //   textAlign: TextAlign.center,
                //   style:TextStyle(
                //     color: Colors.black,
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),),
              )
          ),

          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Communication"),
          ),
          ListTile(
            leading: Icon(Icons.star,size: 30,color: Colors.black),
            title: Text('Rate This App',style: TextStyle(fontSize: 16)),
            textColor: Colors.black,

          ),
          ListTile(
            leading: Icon(Icons.ads_click,size: 30,color: Colors.orange),
            title: Text('More App',style: TextStyle(fontSize: 16)),
            textColor: Colors.black,
          ),

          ListTile(
            leading: Icon(Icons.share,size: 30,color: Colors.black),
            title: Text('Invite Friends',style: TextStyle(fontSize: 16)),
            textColor: Colors.black,
            onTap: shareApp,
          ),

          ListTile(
            leading: Icon(Icons.lock,size: 30,color: Colors.black),
            title: Text('Privacy Policy',style: TextStyle(fontSize: 16)),
            textColor: Colors.black,
          ),

        ],
      ),
    );
  }
}
