import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/pages/login_page.dart';
import 'application/services/cart_service.dart';
import 'application/services/greeting_service.dart';
import 'application/services/user_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => UserService(),
        ),
        ProxyProvider<UserService, GreetingService>(
          update: (BuildContext context, UserService userService,
                  GreetingService greetingService) =>
              GreetingService(userService: userService),
        ),
        ProxyProvider2<UserService, GreetingService, CartService>(
          update: (BuildContext context, UserService userService,
                  GreetingService greetingService, CartService cartService) =>
              CartService(
            userService: userService,
            greetingService: greetingService,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'ProxyProvider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}
