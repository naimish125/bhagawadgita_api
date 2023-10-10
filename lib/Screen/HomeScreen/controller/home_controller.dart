import 'package:bhagawadgita_api/Screen/HomeScreen/model/home_model.dart';
import 'package:get/get.dart';

import '../../../Utils/api_helper.dart';

class HomeController extends GetxController {
  RxList<Home> chapterList = <Home>[].obs;

  Future<void> chapterdata() async {
    chapterList.value = await ApiHelper.helper.getdata();
  }
}
