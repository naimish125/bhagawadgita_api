import 'package:get/get.dart';

import '../../../Utils/api_helper.dart';
import '../model/slock_model.dart';

class SlockdataController extends GetxController {
  RxList<SlockModel> slockdataList = <SlockModel>[].obs;
  Future<SlockModel?> slockdata(int chapterName) async {
    slockdataList.value = await ApiHelper.helper.slock(chapterName);
  }
}
