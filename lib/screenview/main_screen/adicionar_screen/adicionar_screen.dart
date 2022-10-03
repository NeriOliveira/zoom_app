import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants.dart';

class AdicionarScreen extends StatefulWidget {
  const AdicionarScreen({Key? key}) : super(key: key);

  @override
  State<AdicionarScreen> createState() => _AdicionarScreenState();
}

class _AdicionarScreenState extends State<AdicionarScreen> {

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
        initialUrl: 'http://gde.fmxsolucoes.com.br:8686/gdeprv/wpidentificacao.aspx?ProvaSequencial=2',
      ),
    );
  }
}