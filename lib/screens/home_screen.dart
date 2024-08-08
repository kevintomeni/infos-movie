import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'country_provider.dart';
import 'favorite.dart';
import 'pays_screen.dart';
import 'profiles_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int _selectIndex = 0;
  @override
  // ignore: override_on_non_overriding_member
  void _onOptionTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Infos App'),
      ),
      body: countryProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: countryProvider.countries.length,
              itemBuilder: (context, index) {
                final country = countryProvider.countries[index];
                return InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Container(
                      child: Column(
                        children: [
                          Text('Population: ${country.population}'),
                        ],
                      ),
                    )));
                  },
                  child: ListTile(
                    leading: Image.network(country.flagUrl, width: 50),
                    title: Text(country.name),
                    subtitle: Text('Capital: ${country.capital}'),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countryProvider.fetchCountries();
        },
        child: Icon(Icons.refresh),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectIndex,
      selectedItemColor: Colors.amber,
      onTap: _onOptionTap,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              child: Icon(Icons.home)),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, PaysScreen.routeName);
              },
              child: Icon(Icons.map)),
          label: 'Les Pays',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, FavoriteScreen.routeName);
              },
              child: Icon(Icons.favorite)),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ProfilesScreen.routeName);
              },
              child: Icon(Icons.person)),
          label: 'Profils',
        ),
      ],
    );
  }
}
