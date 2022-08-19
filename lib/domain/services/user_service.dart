import '../data_providers/user_data_provider.dart';
import '../entity/user.dart';

class UserService {
  final userDataProvider = UserDataProvider();
  var _user = User(0);
  User get user => _user;

  Future<void> initialize() async {
    _user = await userDataProvider.loadValue();
  }

  void incrementAge() {
    _user = user.copyWith(age: user.age + 1);
    userDataProvider.saveValue(_user);
  }

  void decrementAge() {
    _user = user.copyWith(age: user.age - 1);
    userDataProvider.saveValue(_user);
  }
}
