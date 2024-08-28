import 'package:injectable/injectable.dart';
import 'package:kebo_app/core/data/entities/entities.dart';

@lazySingleton
class UserProvider {
  late UserEntity currentUser;
  bool isLogin = false;

  Future<void> setup(UserEntity user) async {
    currentUser = user;
    isLogin = true;
  }

  void logout() {
    isLogin = false;
  }
}
