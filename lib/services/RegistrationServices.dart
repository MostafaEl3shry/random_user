import 'package:dio/dio.dart';
import '../models/RegistrationModel.dart';

class RegisterService {
  static Dio dio = Dio();
  static Future<RegistrationModel> SignUp({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {

      Response response = await dio
          .post("https://elsewedyteam.runasp.net/api/Register/AddUser", data: { "Name":name,
        "Password":password,
        "Email": email,
        "Phone": phone});
      if (response.statusCode == 200) {
        return RegistrationModel.fromjson(response.data);
      } else {
        throw "Issue with registration";
      }
    } catch (error) {
      throw "Registration error: $error";
    }
  }

  static Future<RegistrationModel> Login({
    required String email,
    required String password,
  }) async {
    try {
      Map data = {"Email": email, "Password": password};
      Response response =
      await dio.post("https://elsewedyteam.runasp.net/api/Login/CheckUser", data: data);
      if (response.statusCode == 200) {
        return RegistrationModel.fromjson(response.data);
      } else {
        throw "Issue with log in";
      }
    } catch (error) {
      throw "Log in error: $error";
    }
  }
}
