import 'package:flutter/widgets.dart';

class UserProvider with ChangeNotifier {

  var _login = false;
  get login => _login;

}