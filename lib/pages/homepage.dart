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
                    height: 95,
                    child: Image.asset(
                      'assets/icons/app_logo.png',
                      fit: BoxFit.cover,
                    )),
                textColor: Colors.black,
                title: Text(
                  "प्रधानमंत्री किसान सम्मान निधि योजना",
                ),
                subtitle: Text('_____________________'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 5,
                    children: List.generate(choices.length, (index) {
                      return Center(child: SelectCard(choice: choices[index]),);
                    }),
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

class Choice{
  final String title;
  final String subtitle;
  final IconData icon;
  Choice({required this.title, required this.subtitle, required this.icon});
}
 List<Choice> choices = <Choice>[
  Choice(title: 'मुख्य पेज', subtitle: 'Main Page' ,icon: Icons.home),
  Choice(title: 'मुख्य पेज', subtitle: 'Main Page' ,icon: Icons.home),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Icon(choice.icon,size: 10,color: Colors.black)),
            Text(choice.title,style: TextStyle(fontSize: 15),),
            Text(choice.subtitle,style: TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}

