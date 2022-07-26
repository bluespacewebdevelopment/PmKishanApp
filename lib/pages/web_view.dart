import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web_View extends StatefulWidget {
  Web_View({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<Web_View> createState() => _Web_ViewState(this.url);
}

class _Web_ViewState extends State<Web_View> {
  String url;

  bool flag = false;
  late WebViewController controller;
  double webprogress = 0;

  _Web_ViewState(this.url);

  show() async {
    flag = await InternetConnectionChecker().hasConnection;
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant Web_View oldWidget) {
    super.didUpdateWidget(oldWidget);
    show();
    print(flag);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      show();
    });

    return flag
        ? Scaffold(
            appBar: AppBar(
              title: Text('किसान सम्मान निधि'),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0.2,
            ),
            body: Column(
              children: [
                webprogress < 1
                    ? SizedBox(
                        child: LinearProgressIndicator(
                          value: webprogress,
                          color: Colors.red,
                          backgroundColor: Colors.black,
                        ),
                      )
                    : SizedBox(),
                Expanded(
                  child: WebView(
                    initialUrl: url,
                    javascriptMode: JavascriptMode.unrestricted,
                    onProgress: (progress) {
                      setState(() {
                        this.webprogress = progress / 100;
                      });
                    },
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                controller.loadUrl(
                    'https://www.youtube.com/channel/UC7LI0mBeuP5zzrCf8t-vNlg');
              },
              child: Icon(Icons.import_export),
            ),
          )
        : Container(
            child: Center(
              child: Text(
                'No Internet ',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          );
  }
}
