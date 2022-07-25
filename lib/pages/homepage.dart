import 'package:flutter/material.dart';
import 'package:pm_kishan_app/utils/drawer.dart';
import 'package:share/share.dart';

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
                child: GridView.count(
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
  Choice(title: नया पंजीकरण करें', subtitle: 'Main Page' ,icon: Icons.person),
  Choice(title: 'आधार कार्ड लिंक करें ', subtitle: 'Main Page' ,icon: Icons.fingerprint),
  Choice(title: 'अपना खाता देखें', subtitle: 'Main Page' ,icon: Icons.document_scanner),
  Choice(title: 'नरेगा जॉब कार्ड', subtitle: 'Main Page' ,icon: Icons.card_giftcard),
  Choice(title: 'शौचालय योजना ', subtitle: 'Main Page' ,icon: Icons.home_mini),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: CircleAvatar(backgroundColor: Theme.of(context).primaryColor,radius: 30
                ,child: Icon(choice.icon,size: 45,color: Colors.white))),
            Text(choice.title,style: TextStyle(fontSize: 25)),
            Text(choice.subtitle,style: TextStyle(fontSize: 17)),
          ],
        ),
      ),
    );
  }
}

