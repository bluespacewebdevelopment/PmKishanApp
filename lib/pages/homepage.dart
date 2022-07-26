import 'package:flutter/material.dart';
import 'package:pm_kishan_app/pages/main_page.dart';
import 'package:pm_kishan_app/utils/drawer.dart';
import 'package:share/share.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void shareApp() async {
    Share.share('https://play.google.com/store/apps/details?id=com.pm_kisan_samman_nidhi_yojna_app',
        subject: 'PM Kishan Yojana');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text('PM Kishan Yojana',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                shareApp();
              },
              icon: Icon(Icons.share),
              color: Colors.white),
        ],
      ),
      drawer: Mydrawer(),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          shape: BoxShape.rectangle,
          color: Colors.white,
          gradient: LinearGradient(
            colors: [Colors.white, Colors.orange, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Container(
                    width: 95,
                    child: Image.asset('assets/icons/app_logo.png', fit: BoxFit.cover,)),
                textColor: Colors.black,
                title: Text("प्रधानमंत्री किसान सम्मान निधि योजना",style: TextStyle(color: Colors.white),),
                subtitle: Text('किसानो की समृद्धि हमारी जिम्मेदारी',style: TextStyle(color: Colors.white)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GridView.count(
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.all(15),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 5,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.home,size: 30,color: Colors.white)),
                                    SizedBox(height: 15),
                                    Text('मुख्य पेज',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    Text('Main Page',style: TextStyle(fontSize: 10,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.person,size: 30,color: Colors.white)),
                                  SizedBox(height: 15),
                                  Text('नया पंजीकरण करें',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                  Text('New Farmer Registration',style: TextStyle(fontSize: 10,)),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.fingerprint,size: 30,color: Colors.white)),
                                    SizedBox(height: 15),
                                    Text('आधार कार्ड लिंक करें',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                    Text('PM Farmer eKYC',style: TextStyle(fontSize: 10,)),
                                  ],
                                )
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.file_copy_sharp,size: 30,color: Colors.white)),
                                  SizedBox(height: 15),
                                  Text('अपना खाता देखें',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                  Text('View Your Account',style: TextStyle(fontSize: 10,)),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.card_travel_sharp,size: 30,color: Colors.white)),
                                  SizedBox(height: 15),
                                  Text('नरेगा जॉब कार्ड',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                  Text('Narega Yojana',style: TextStyle(fontSize: 10,)),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),),
                              elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () { Navigator.pushNamed(context, 'main_page'); },
                            child: Card(
                              elevation: 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25,child: Icon(Icons.home_work,size: 30,color: Colors.white)),
                                  SizedBox(height: 15),
                                  Text('शौचालय योजना',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                  Text('Toilet Scheme',style: TextStyle(fontSize: 10,)),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Container(
                        height: 45,width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),),
                        child: Center(child: Text('पीएम किसान सम्मान निधि योजना क्या है ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                      child: Container(
                        height: 45,width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),),
                        child: Center(child: Text('अपने गांव की लिस्ट देखें',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                      child: Container(
                        height: 45,width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),),
                        child: Center(child: Text('ई-श्रम कार्ड रजिस्ट्रेशन',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 70),
                      child: Container(
                        height: 75,width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),),
                          // Text('अन्य सेवाएं'
                        child: ListTile(
                          leading: Container(child: Icon(Icons.flash_on,color: Colors.yellow,size: 40,)),
                          subtitle: Text('Other Services',textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
                          title: Text('अन्य सेवाएं',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.grey.shade900),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
