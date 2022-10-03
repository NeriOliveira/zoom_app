import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({Key? key}) : super(key: key);

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {

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
        initialUrl: 'http://www.abccriadores.com.br/Racas.aspx',
      ),
    );
  }
}