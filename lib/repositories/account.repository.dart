import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/view-models/signup.viewmodel.dart';
import '../models/user.model.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return UserModel(
        id: "1",
        name: "Kauan Torrisi",
        email: "torrisikauan@gmail.com",
        picture: "https://picsum.photos/200/200",
        role: "Estudante",
        token: "xpto");
  }
}
