import 'package:flutter_web_admin_page/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = "".obs;
}
