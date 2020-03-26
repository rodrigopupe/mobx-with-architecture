import 'package:mobx_with_architecture/models/user_model.dart';
import 'package:mobx_with_architecture/viewmodels/signup_viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignUpViewModel viewModel) async {
    await Future.delayed(Duration(milliseconds: 1500));

    return UserModel(
      id: "1",
      name: viewModel.name,
      email: viewModel.email,
      picture: "https://picsum.photos/200",
      role: "studdent",
      token: "xpto",
    );
  }
}