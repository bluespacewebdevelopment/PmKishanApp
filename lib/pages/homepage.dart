import 'package:flutter/material.dart';
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
    Share.share(
        'https://play.google.com/store/apps/details?id=com.pm_kisan_samman_nidhi_yojna_app',
        subject: 'PM Kishan Yojana');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PM Kishan Yojana',
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
                      children: List.generate(choices.length, (index) {
                        return Center(child: SelectCard(choice: choices[index],));
                        // return Card(child: Icon(Icons.home),);
                      }),
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
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                      child: Container(
                        height: 75,width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 2,
                              style: BorderStyle.solid),),
                        child: Center(child: Text('अन्य सेवाएं',textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
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

class Choice{
  final String title;
  final String subtitle;
  final IconData icon;
  Choice({required this.title, required this.subtitle, required this.icon});
}
 List<Choice> choices = <Choice>[
  Choice(title: 'मुख्य पेज', subtitle: 'Main Page' ,icon: Icons.home),
  Choice(title: 'नया पंजीकरण करें', subtitle: 'New Farmer Registration' ,icon: Icons.person),
  Choice(title: 'आधार कार्ड लिंक करें', subtitle: 'PM Farmer eKYC' ,icon: Icons.fingerprint),
  Choice(title: 'अपना खाता देखें', subtitle: 'View Your Account' ,icon: Icons.file_copy_sharp),
  Choice(title: 'नरेगा जॉब कार्ड', subtitle: 'Narega Yojana' ,icon: Icons.card_travel_sharp),
  Choice(title: 'शौचालय योजना', subtitle: 'Toilet Scheme' ,icon: Icons.home_work),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    MaterialColor mycolor3 = MaterialColor(0xFF23D806, color);
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 25
                ,child: Icon(choice.icon,size: 35,color: Colors.white)),
            SizedBox(height: 15),
            Text(choice.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            Text(choice.subtitle,style: TextStyle(fontSize: 15,)),
          ],
        ),
      ),
    );
  }
}

