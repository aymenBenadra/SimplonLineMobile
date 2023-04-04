import 'package:flutter/material.dart';
import 'package:simplonmobile/models/Apprenant.model.dart';

class UserProvider with ChangeNotifier {
  ApprenantModel? _user;

  ApprenantModel? get user => _user;

  void setUser(ApprenantModel user) {
    _user = user;
    notifyListeners();
  }
}