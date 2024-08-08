import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'country_provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});
  static String routeName = 'country_screen';

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final country = countryProvider.countries[index];
          return ListView(
            children: [
              Text(country.name)
            ],
          );
        },
      ),
    );
  }
}
