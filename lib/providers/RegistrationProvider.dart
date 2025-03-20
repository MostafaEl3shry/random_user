import 'package:flutter/widgets.dart';
import '../models/RegistrationModel.dart';
import '../services/RegistrationServices.dart';

class RegisterProvider extends ChangeNotifier {
  RegistrationModel? userModel;
  bool isLoading = false;

  Future<void> registerUser({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    isLoading = true;

    userModel = await RegisterService.SignUp(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );

    isLoading = false;
  }

  Future<void> logUser({
    required String email,
    required String password,
  }) async {
    isLoading = true;

    userModel = await RegisterService.Login(
      email: email,
      password: password,
    );

    isLoading = false;
  }
}
