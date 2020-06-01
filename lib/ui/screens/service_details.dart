import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ServiceDetails extends StatefulWidget {
  final String url;

  const ServiceDetails({Key key, this.url}) : super(key: key);
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  bool isLoading;
  @override
  void initState() {
    isLoading = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Completer<WebViewController> _controller =
        Completer<WebViewController>();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Service",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: widget.url,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (value) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center(child: CircularProgressIndicator()) : Container(),
        ],
      ),
    );
  }
}
