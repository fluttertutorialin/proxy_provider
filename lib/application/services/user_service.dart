import 'package:proxy_provider/domain/entities/user.dart';

class UserService {
  User _user;
  User get user => _user;

  setUser(User user) {
    _user = user;
  }
}
