import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
 static String routeName = 'favorite';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes Pays Favotires'),
      ),
      body: Center(
        child: Text('Favorite'),
      ),
    );
  }
}
