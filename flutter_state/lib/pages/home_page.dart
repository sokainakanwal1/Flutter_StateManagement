import 'package:flutter/material.dart';
import 'package:flutter_state/controller/home_controller.dart';
import 'package:flutter_state/pages/nextpage.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Downloading Completed",
                        "Your song has been downloaded");
                  },
                  child: Text("SNACK BAR")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: "Alert",
                        content: Column(
                          children: [Text("Do you want to delete?")],
                        ));
                  },
                  child: Text("Dialogue Box")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => NextPage()),
                  child: Text("Go to ")),
              IconButton(
                  onPressed: () {
                    controller.add();
                  },
                  icon: Icon(Icons.add)),
              Obx(
                () => Text(controller.n.toString(),
                    style: TextStyle(fontSize: 70)),
              ),
              IconButton(
                  onPressed: () {
                    controller.sub();
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ],
          ),
        ),
      ),
    ));
  }
}
