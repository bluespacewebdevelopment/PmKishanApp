import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:platform/platform.dart';
import 'package:pm_kishan_app/main.dart';
import 'package:pm_kishan_app/pages/HomePage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  MaterialColor mycolor = MaterialColor(0xFF10e341, color);
  MaterialColor mycolor1 = MaterialColor(0xFF10e530, color);
  MaterialColor mycolor2 = MaterialColor(0xFF10e700, color);

  void _Send(){
    AndroidIntent intent = AndroidIntent(
      action: 'android.intent.action.ACTION_SEND',
      data: "my name is bhagchand jat",
      type: 'message/rfc822',
    );
    if (const LocalPlatform().isAndroid) {
      print("Heloo");
      intent.launch();
    }
  }
  @override
  Widget build(BuildContext context) {
/*ProgressDialog progressDialog=ProgressDialog(context: context);
progressDialog.show(max: 10, msg:'Heloo' );
progressDialog.close();*/

    return Container(
      padding: EdgeInsets.only(top: 330),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          shape: BoxShape.rectangle,
          color: Colors.white),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false);
            },
            style: ButtonStyle(
              side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1, color: mycolor)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )),
            ),
            child: Text("START",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 11, right: 11),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, mycolor1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Icon(
                          Icons.share,
                          size: 50,
                          color: Colors.brown,
                        ),
                        color: Colors.brown[700],
                        onPressed: () {
                          AndroidIntent intent = AndroidIntent(
                              action: 'android.intent.action.ACTION_SEND');
                        },
                        iconSize: 50,
                      ),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 11, right: 11),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, mycolor1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Icon(
                          Icons.star_half,
                          size: 50,
                          color: Colors.brown,
                        ),
                        color: Colors.brown[700],
                        onPressed: () {
                          AndroidIntent intent = AndroidIntent(
                              action: 'android.intent.action.ACTION_SEND');
                        },
                        iconSize: 50,
                      ),
                    ),
                    Text(
                      "Rate Us",
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 11, right: 11),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, mycolor1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: Column(
                  children: [
                    Card(
                      child: IconButton(
                        icon: Icon(
                          Icons.folder,
                          size: 50,
                          color: Colors.brown,
                        ),
                        color: Colors.brown[700],
                        onPressed: () {
                          _Send();
                        },
                        iconSize: 50,
                      ),
                    ),
                    Text(
                      "More App",
                      style: TextStyle(fontSize: 14, color: Colors.black45),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
