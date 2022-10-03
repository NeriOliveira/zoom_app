import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants.dart';

class VendaScreen extends StatefulWidget {
  const VendaScreen({Key? key}) : super(key: key);

  @override
  State<VendaScreen> createState() => _VendaScreenState();
}

class _VendaScreenState extends State<VendaScreen> {

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: conBackgroundColor,
        ),
        image: DecorationImage(
          image: AssetImage('assets/carregando.gif'),
        ),
      ),
      child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        gestureNavigationEnabled: true,
        initialUrl: 'https://www.pecuaria.erural.net/ra%C3%A7a-nelore?utm_source=google-ads&utm_medium=cpc&utm_campaign=NELORE-perpetua&utm_term=nelore&gclid=Cj0KCQjwkOqZBhDNARIsAACsbfIGpzcvKfgKkLWyoyov-c0zGFcXVF3eHBi1A5mdbqupRud6x0HPjYwaAiN2EALw_wcB',
      ),
    );
  }
}