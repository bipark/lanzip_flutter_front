import 'package:flutter/widgets.dart';

class UserProvider with ChangeNotifier {

  var _login = true;
  get login => _login;

}