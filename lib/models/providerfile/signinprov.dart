import 'package:flutter/material.dart';
import 'package:piolapp/models/user.dart';

class SignInProvider extends ChangeNotifier
{
  late User user ;
  get loggedUser=>user;
  set setLoggedUser(User logUse){
    user=logUse;
    notifyListeners();
  }
}