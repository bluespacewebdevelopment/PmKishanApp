import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PM Kisan Yojna App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,

        ),),
        actions: [
         IconButton(onPressed: (){

         }, icon: Icon(Icons.share),color: Colors.white,),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  shape: BoxShape.rectangle,
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.orange, Colors.green],
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
                    Text("PM Kisan Samman Nidhi",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ) ,),
                    ImageIcon(
                     AssetImage('icons/logo.png')),
                  ],
                )
            ),



            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Communication"),
            ),
            ListTile(
              leading: Icon(Icons.star,size: 30,color: Colors.black,),
              title: Text('Rate This App',style: TextStyle(fontSize: 16),),
              textColor: Colors.black,

            ),
            ListTile(
              leading: Icon(Icons.ads_click,size: 30,color: Colors.orange,),
              title: Text('More App',style: TextStyle(fontSize: 16),),
              textColor: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.share,size: 30,color: Colors.black,),
              title: Text('Invite Friends',style: TextStyle(fontSize: 16),),
              textColor: Colors.black,
            ),

            ListTile(
              leading: Icon(Icons.lock,size: 30,color: Colors.black,),
              title: Text('Privacy Policy',style: TextStyle(fontSize: 16),),
              textColor: Colors.black,
            ),

          ],
        ),
      ),
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
            Row(
              children: [

                Text("प्रधानमंत्री किसान सम्मान निधि योजना")
                
              ],
            ),

    SingleChildScrollView(
                  scrollDirection: Axis.vertical,
      child: Column(

      ),
                ),
          ],
        ),
      ),
    );
  }
}
