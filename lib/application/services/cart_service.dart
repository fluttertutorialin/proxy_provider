import 'package:flutter/foundation.dart';
import '../../domain/entities/user.dart';
import 'greeting_service.dart';
import 'user_service.dart';

class CartService {
  CartService({
    @required GreetingService greetingService,
    @required UserService userService,
  })  : _greetingService = greetingService,
        _userService = userService;

  GreetingService _greetingService;
  UserService _userService;

  String get cartGreeting => _greetingService.greeting;
  User get user => _userService.user;
}
