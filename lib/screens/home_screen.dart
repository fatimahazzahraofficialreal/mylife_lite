import 'package:flutter/material.dart';
import '../../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beranda')),
      drawer: buildDrawer(context),
      body: Center(child: Text('Selamat datang di MyLife Lite')),
    );
  }
}
