import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants.dart';

class FazendaScreen extends StatefulWidget {
  const FazendaScreen({Key? key}) : super(key: key);

  @override
  State<FazendaScreen> createState() => _FazendaScreenState();
}

class _FazendaScreenState extends State<FazendaScreen> {

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
        initialUrl: 'https://nutricaoesaudeanimal.com.br/gestao-de-gado-de-corte/',
      ),
    );
  }
}