import 'package:flutter/material.dart';

import '../../../constants.dart';

class ConfigurarScreen extends StatelessWidget {
  const ConfigurarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: conBackgroundColor,
        ),
      ),
      child: const Center(child: Text('Configurações')),
    );
  }
}