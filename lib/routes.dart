import 'package:flutter/material.dart';

import 'screens/country_screen.dart';
import 'screens/favorite.dart';
import 'screens/home_screen.dart';
import 'screens/pays_screen.dart';
import 'screens/profiles_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';


final Map<String, WidgetBuilder> route = {
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  PaysScreen.routeName: (context) => PaysScreen(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  ProfilesScreen.routeName: (context) => ProfilesScreen(),
  CountryScreen.routeName: (context) => CountryScreen()
};
