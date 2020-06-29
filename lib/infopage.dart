import 'package:flutter/material.dart';
import './ads.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    showbanner();
    super.initState();
  }

  @override
  void dispose() {
    hidebanner();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(' This is ads page '),
      ),
    );
  }
}
