import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/slock_controller.dart';

class SlockScreen extends StatefulWidget {
  const SlockScreen({super.key});

  @override
  State<SlockScreen> createState() => _SlockScreenState();
}

class _SlockScreenState extends State<SlockScreen> {
  SlockdataController slockdataController = Get.put(
    SlockdataController(),
  );

  @override
  void initState() {
    super.initState();
    var index = Get.arguments;
    slockdataController.slockdata(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade200,
        body: Obx(
          () => ListView.builder(
            itemCount: slockdataController.slockdataList.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black38,
                child: ListTile(
                  leading: Text(
                      "${slockdataController.slockdataList[index].id}.",
                      style: TextStyle(color: Colors.white)),
                  title: Text(
                      "${slockdataController.slockdataList[index].transliteration}",
                      style: TextStyle(color: Colors.white)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
