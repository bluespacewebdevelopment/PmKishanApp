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
 bool isLoading=true;

  _Web_ViewState(this.url);

  show() async {
    flag = await InternetConnectionChecker().hasConnection;
    setState(() {

    });
  }

 Widget web(){
  return  WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
     onPageStarted: (String url){
        setState(() {
          this.isLoading=true;
          print("start");
        });
     },
      onPageFinished: (String url){
        setState(() {
          this.isLoading=false;
          print("finish");

        });
      },

    onProgress: (progress) {
      setState(() {
        this.webprogress = progress / 100;
        this.isLoading=false;
        print("loading");

      });
    },

    );
  }

  @override
  void didUpdateWidget(covariant Web_View oldWidget) {
    super.didUpdateWidget(oldWidget);
    show();
  }

  @override
  Widget build(BuildContext context) {
Future.delayed(Duration(milliseconds: 4000),(){
    isLoading=false;

});

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
            body: isLoading ?
            Center(
                  child: CircularProgressIndicator(),
                )
                : Column(
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
                        child:  WebView(
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
                    url);
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
