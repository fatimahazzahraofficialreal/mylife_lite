import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/drawer_widget.dart';

class MotivasiScreen extends StatefulWidget {
  @override
  _MotivasiScreenState createState() => _MotivasiScreenState();
}

class _MotivasiScreenState extends State<MotivasiScreen> {
  String quote = "Memuat motivasi...";

  void fetchQuote() async {
    final res = await http.get(Uri.parse('https://zenquotes.io/api/random'));
    if (res.statusCode == 200) {
      final data = json.decode(res.body);
      setState(() {
        quote = data[0]['q'] + " — " + data[0]['a'];
      });
    } else {
      setState(() {
        quote = "Gagal memuat kutipan.";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Motivasi Harian')),
      drawer: buildDrawer(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(quote, style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
