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
  double webprogress=0;
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
      body: Column(
          children: [
            webprogress<1 ?
            Column(
              children: [
                SizedBox(
                  child: LinearProgressIndicator(
                    value: webprogress,
                    color: Colors.red,
                    backgroundColor: Colors.black,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 330,bottom: 200),
                    child: CircularProgressIndicator(color: Colors.red))
              ],
            )  : SizedBox(),
            Expanded(
              child: WebView(
                initialUrl: url,
                javascriptMode: JavascriptMode.unrestricted,
                onProgress:(progress){
                  setState(() {
                    this.webprogress = progress/100;
                  });
                },
              ),
            ),
          ],
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
