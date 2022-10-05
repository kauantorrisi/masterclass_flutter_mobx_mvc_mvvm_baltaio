import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/view-models/signup.viewmodel.dart';
import '../models/user.model.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return UserModel(
        id: "1",
        name: model.name,
        email: model.email,
        picture: model.picture,
        role: "Estudante",
        token: "xpto");
  }
}
