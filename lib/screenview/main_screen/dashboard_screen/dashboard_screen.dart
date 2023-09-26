import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  late WebViewController webViewController;

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
        initialUrl: 'https://app.powerbi.com/view?r=eyJrIjoiNTlkZjFmMzEtM2U0Yi00M2I3LWI0NzUtOWYyMjYwNTI4ODllIiwidCI6IjZlNmFkNmYyLTg4NDgtNDVmYy05MGRhLWQyZmE4OTQwZGVmNCJ9&pageName=ReportSection',
      ),
    );
  }
}