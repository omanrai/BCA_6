import 'package:bca_6/controller/counter_controller.dart';
import 'package:bca_6/id_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'cat/dog_list_page.dart';

class CounterApp extends StatelessWidget {
  CounterApp({super.key});

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("demo");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 50,
        children: [
          Obx(() => Text(counterController.count.toString())),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  counterController.add();
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  counterController.sub();
                },
                icon: Icon(Icons.minimize),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => StudentIDScreen()),
              // );

              Get.to(() => StudentIDScreen());

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text("This is the student ID card."),
              //     duration: Duration(seconds: 2),
              //     backgroundColor: Colors.amber,
              //   ),
              // );

              // Get.snackbar(
              //   "Student Card",
              //   "This is the student ID card.",
              //   backgroundColor: Colors.blue,
              //   colorText: Colors.white,
              //   snackPosition: SnackPosition.BOTTOM,
              //   duration: Duration(seconds: 1),
              // );

              // showDialog(
              //   context: context,
              //   builder: (context) => AlertDialog(
              //     title: Text("Student ID Card"),
              //     content: Text("This is the student ID card."),
              //   ),
              // );

              // Get.defaultDialog(
              //   title: "Student ID Card",
              //   content: Text("This is the student ID card."),
              //   confirm: ElevatedButton(
              //     onPressed: () {
              //       Get.back();
              //     },
              //     child: Text("Back"),
              //   ),
              // );
            },
            child: Text("Go to Student ID card"),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => DogListPage()),
          //     );
          //   },
          //   child: Text("Go to Cat List Page"),
          // ),
        ],
      ),
    );
  }
}
