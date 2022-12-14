import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String picture = '';

  @observable
  String token = '';

  @action
  void setUser(String pName, String pEmail, String pPicture, String pToken) {
    name = pName;
    email = pEmail;
    picture = pPicture;
    token = pToken;
  }

  @action
  void updatePicture(String newPicture) {
    picture = newPicture;
  }
}
