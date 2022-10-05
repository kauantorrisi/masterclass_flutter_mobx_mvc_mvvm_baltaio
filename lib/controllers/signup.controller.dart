import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/models/user.model.dart';
import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/repositories/account.repository.dart';
import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/view-models/signup.viewmodel.dart';

class SignupController {
  late AccountRepository repository;

  SignupController() {
    repository = AccountRepository();
  }

  Future<UserModel> create(SignupViewModel model) async {
    model.busy = true;
    UserModel user = await repository.createAccount(model);
    model.busy = false;
    return user;
  }
}
