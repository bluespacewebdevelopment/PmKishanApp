// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter/material.dart';
//
// class Web_View extends StatefulWidget {
//   Web_View({Key? key, required this.url}) : super(key: key);
//   final String url;
//   @override
//   State<Web_View> createState() => _Web_ViewState(this.url);
// }
//
// class _Web_ViewState extends State<Web_View> {
//   String url;
//   late WebViewController controller;
//
//   _Web_ViewState(this.url);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('किसान सम्मान निधि'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0.2,
//       ),
//       body: WebView(
//         initialUrl: url,
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           controller.loadUrl('https://www.youtube.com/channel/UC7LI0mBeuP5zzrCf8t-vNlg');
//
//         },
//         child: Icon(Icons.import_export),
//       ),
//     );
//   }
// }
