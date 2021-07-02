import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:getx_app/pages/account/httpservice/user.dart';
import 'package:getx_app/pages/account/list_user_response.dart';

abstract class NewsRepo{
  Future<List<User>> GetDataHead();

}
class NewsHeadlineBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(User());
    Get.put(ListUserResponse());
  }

}