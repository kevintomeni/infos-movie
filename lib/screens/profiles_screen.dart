import 'package:flutter/material.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key});
  static String routeName = 'profil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Profil'),
      ),
      body:Column(
        children: [
          Column(
            children: [
              CircleAvatar(
                maxRadius: 80,
              ),
              Text('Your Name'),
            ],
          )
        ],
      )
    );
  }
}
