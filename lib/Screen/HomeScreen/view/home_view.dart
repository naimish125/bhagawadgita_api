import 'package:bhagawadgita_api/Screen/HomeScreen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  void initState() {
    homeController.chapterdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade200,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text(
            "ભગવદ ગીતા",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(Icons.bookmark_add_outlined),
          ],
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: homeController.chapterList.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black38,
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/slockscreen',
                        arguments:
                            homeController.chapterList[index].chapterNumber);
                  },
                  child: ListTile(
                    leading: Text(
                        "${homeController.chapterList[index].chapterNumber}.",
                        style: TextStyle(color: Colors.white)),
                    title: Text(
                        "${homeController.chapterList[index].nameTranslated}",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
