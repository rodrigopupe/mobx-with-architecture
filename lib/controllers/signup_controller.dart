import 'package:mobx_with_architecture/models/user_model.dart';
import 'package:mobx_with_architecture/repositories/account_repository.dart';
import 'package:mobx_with_architecture/viewmodels/signup_viewmodel.dart';

class SignUpController {
  AccountRepository repository;

  SignUpController() {
    repository = AccountRepository();
  }

  Future<UserModel> create(SignUpViewModel viewModel) async {
    viewModel.busy = true;
    var user = await repository.createAccount(viewModel);

    viewModel.busy = false;
    return user;
  }
}
