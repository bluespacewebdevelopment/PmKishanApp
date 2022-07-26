import 'dart:io';

import 'package:pm_kishan_app/utils/show_error.dart';
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
  double webprogress = 0;
  _Web_ViewState(this.url);
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        appBar: AppBar(
          title: Text('किसान सम्मान निधि'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.2,
        ),
        body: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted:(progress) async {

            Center(child: CircularProgressIndicator(),);

          },
          onProgress:(progress) async {
            try{
              await this.webprogress;
              setState(() {
                this.webprogress = progress/100;
              }); } on WebSocketException catch (e){PrintError.showSnackBar(e.message);};
          },
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            controller.loadUrl('https://www.youtube.com/channel/UC7LI0mBeuP5zzrCf8t-vNlg');
          },
          child: Icon(Icons.import_export),
        ),
      );
  }

}
