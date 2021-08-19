import 'package:flutter/foundation.dart';
import 'user_service.dart';

class GreetingService {
  GreetingService({@required UserService userService})
      : _userService = userService;

  UserService _userService;

  String get greeting => "Hello, ${_userService.user.username}";
}
