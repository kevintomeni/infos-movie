

import 'package:flutter/material.dart';

import 'api_service.dart';
import 'country.dart';


class CountryProvider with ChangeNotifier{
  List<Country>  _countries = [];
  bool _isLoadding = false;

  List<Country> get countries => _countries;
  bool get isLoading => _isLoadding;

  Future<void> fetchCountries() async {
    _isLoadding = true ;
    notifyListeners();

    try {
      _countries = await ApiService().fetchCountries();
    } catch (e) {
      // Handle error
      
    } finally{
      _isLoadding = false;
      notifyListeners();
    }
  }
}