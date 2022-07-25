// import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:platform/platform.dart';
import 'package:pm_kishan_app/main.dart';
import 'package:pm_kishan_app/pages/homepage.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {



  static void _shareContent() async {
    List<String> imagePaths = [];
    final appurl= 'https://images.yourstory.com/cs/5/f02aced0d86311e98e0865c1f0fe59a2/indian-farmer-1610471656527.png?fm=auto&ar=2:1&mode=crop&crop=faces&w=1270';
    final url = Uri.parse(appurl);
    final response = await http.get(url);
    final bytes = response.bodyBytes;
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/image.jpg';
    imagePaths.add(path);
    Share.share('https://play.google.com/store/apps/details?id=com.pm_kisan_samman_nidhi_yojna_app'
        ,subject: 'PM Kishan Yojana',);
    // File(imagePaths).writeasBytesSync(bytes);
    // await Share.shareFiles([imagePaths[0]], text: 'My Images', subject: "Enjoy");
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
                  (states) => BorderSide(width: 1, color: Theme.of(context).primaryColor)),
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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, Colors.lightGreenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: ElevatedButton(
                  onPressed: () async { _shareContent(); },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent.withOpacity(0)),
                  ),
                     child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.share,
                          size: 50,
                          color: Colors.brown,
                        ),
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, Colors.lightGreenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),),
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent) ),
                  onPressed: () {  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Icon(
                          Icons.star_half,
                          size: 50,
                          color: Colors.brown[700],
                        ),
                      Text("Rate Us",
                        style: TextStyle(fontSize: 15, color: Colors.black45),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 11, right: 11),
                height: 100,width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, Colors.lightGreenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1,
                      style: BorderStyle.solid),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),),
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent) ),
                  onPressed: () {  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons.folder,
                          size: 50,
                          color: Colors.brown,
                        ),
                      Text(
                        "More App",
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
