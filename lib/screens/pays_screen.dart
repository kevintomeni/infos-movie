import 'package:flutter/material.dart';

class PaysScreen extends StatelessWidget {
  const PaysScreen({super.key});
  static String routeName = 'pays';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decouvrer les pays du monde'),
      ),
      body: Center(
        child: Text('Les Pays du monde'),
      ),
    );
  }
}
