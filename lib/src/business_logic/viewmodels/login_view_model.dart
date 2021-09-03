import 'package:flutter/material.dart';
import 'package:minora/src/business_logic/viewmodels/base_model.dart';
import 'package:minora/src/constants/route_names.dart';
import 'package:minora/src/services/dialog_service.dart';
import 'package:minora/src/services/navigation_service.dart';
import 'package:minora/src/services/web_api/authentication_service.dart';

import '../../../locator.dart';

class LoginViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future login({@required String email, @required String password}) async {
    setBusy(true);

    var result = await _authenticationService.loginWithEmail(
        email: email, password: password);

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(HomeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Login Failure',
          description: 'Couldn\'t login at this moment. Please try again later',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Login Failure',
        description: result,
      );
    }
  }
}
