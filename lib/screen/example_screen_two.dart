



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/controller/exapmle_screen_two.dart';
import 'package:main_app_structure/model/demo_movie_model.dart';
import 'package:main_app_structure/product/widgets/general/general_search_bar_widget.dart';

class ExapmleScreenTwo extends StatelessWidget {
  ExapmleScreenTwo({super.key});
    final mainScreenController = Get.put(ExapmleScreenTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      }),
      appBar: AppBar(
        title: const Text("Medicine List"),
      ),
      body: Column(
        children: [
          CustomGeneralSearchBar<MovieModel>(
            filterCondition: medicineFilterCondition,
            initialItems: mainScreenController.items,
            onFilteredItemsChanged: (filteredItems) {
              mainScreenController.updateFilteredItems(filteredItems);
            },
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: mainScreenController.filteredItems.length,
                itemBuilder: (context, index) {
                  final item = mainScreenController.filteredItems[index];
                  return ListTile(
                    title: Text(item.title),
                    subtitle: Text(item.genre),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool medicineFilterCondition(MovieModel medicine, String query) {
    return medicine.title.toLowerCase().contains(query.toLowerCase()) ||
        medicine.genre.toLowerCase().contains(query.toLowerCase());
  }
}