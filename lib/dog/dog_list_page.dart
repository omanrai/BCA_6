import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dog_controller.dart';

class DogListPage extends StatelessWidget {
  final DogController controller = Get.put(DogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dog Breeds")),
      body: Column(
        children: [
          Obx(() {
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
              itemCount: controller.dogList.length,
              itemBuilder: (context, index) {
                final dog = controller.dogList[index];
                return Card(
                  child: ListTile(
                    onTap: () {
                      log("Tapped on ${dog.id}");
                      // controller.dogID = dog.id;
                    },
                    leading: dog.referenceImageId.isNotEmpty
                        ? Image.network(
                            "https://cdn2.thedogapi.com/images/${dog.referenceImageId}.jpg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          )
                        : Icon(Icons.pets, size: 40),
                    title: Text(dog.name),
                    subtitle: Text(
                      "${dog.breedGroup}\n${dog.lifeSpan}\nTemperament: ${dog.temperament}",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
