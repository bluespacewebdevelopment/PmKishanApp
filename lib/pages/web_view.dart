import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class Web_View extends StatefulWidget {
  Web_View({Key? key, required this.url}) : super(key: key);
 final String url;
  @override
  State<Web_View> createState() => _Web_ViewState(this.url);
}

class _Web_ViewState extends State<Web_View> {
  String url;
 late WebViewController controller;

  _Web_ViewState(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('किसान सम्मान निधि'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.2,
      ),
      body:
      WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller){
          this.controller=controller;
        },
      ),
    );
  }
}
