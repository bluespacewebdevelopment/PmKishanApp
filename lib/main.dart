import 'package:flutter/material.dart';
import 'package:pm_kishan_app/pages/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor mycolor = MaterialColor(0xFF128500, color);
    MaterialColor mycolor2 = MaterialColor(0xFF800020, color);
    MaterialColor mycolor3 = MaterialColor(0xFF23D806, color);

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: mycolor,
      fontFamily: 'myfont'),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: StartPage(),
      initialRoute: 'start',
      routes: {
        'start':(context) => StartPage(),
      },
    );
  }
}
Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
