import 'package:get_dio/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_dio/service/network_service.dart';

class UserScreenController extends GetxController {
  final NetworkService _networkService = NetworkService();
  var user = User().obs;

  fetchUser(int id) async {
    user.value = await _networkService.getUser(id);
  }

  @override
  void onInit() {
    fetchUser(1);
    super.onInit();
  }
}
