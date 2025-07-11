import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/todo_screen.dart';
import '../screens/motivasi_screen.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('MyLife Lite', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(
          title: Text('Home'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen())),
        ),
        ListTile(
          title: Text('To-Do'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => TodoScreen())),
        ),
        ListTile(
          title: Text('Motivasi'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MotivasiScreen())),
        ),
      ],
    ),
  );
}