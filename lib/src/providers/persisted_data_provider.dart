import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class PersistedData {
  String userName;
  String emailAddress;
  String deviceNumber;
  String active;
  String rememberMe;
  String activeSession;
  String theme;

  PersistedData(
      {this.userName,
      this.emailAddress,
      this.deviceNumber,
      this.active,
      this.rememberMe,
      this.activeSession,
      this.theme});
}

class PersistedDataProvider with ChangeNotifier {
  PersistedData _persistedUserData;
  SharedPreferences _preferences;

  Map<String, dynamic> _userData = {
    "user_name": "",
    "email_address": "",
    "device_number": "",
    "active": "",
    "remember_me": "",
    "active_session": "",
    "theme": "L",
  };

  Future<PersistedData> getPersistedDataOnFirstBuild() async {
    _preferences = await SharedPreferences.getInstance();

    try {
      String userDataCheck = _preferences.getString('user_data');

      if (userDataCheck == null) {
        //First build

        _setPersistedData(_userData);

        _preferences.setString('user_data', jsonEncode(_userData));

        return _persistedUserData;
      }

      _userData = jsonDecode(_preferences.getString('user_data'));
      _setPersistedData(_userData);

      return _persistedUserData;
    } on Exception catch (e) {
      throw (e);
    }
  }

  void _setPersistedData(Map<String, dynamic> userData) {
    print(userData);
  }
}
