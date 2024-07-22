

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:main_app_structure/controller/example_screen.dart';
import 'package:main_app_structure/model/demo_model.dart';
import 'package:main_app_structure/product/widgets/general_search_bar_widget.dart';
import 'package:main_app_structure/screen/example_screen_two.dart';

class ExapmleScreen extends StatelessWidget {
  ExapmleScreen({super.key});
    final mainScreenController = Get.put(ExapmleScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExapmleScreenTwo(),));
      }),
      appBar: AppBar(
        title: const Text("Medicine List"),
      ),
      body: Column(
        children: [
          CustomGeneralSearchBar<DemoModel>(
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
                    title: Text(item.name),
                    subtitle: Text(item.category),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool medicineFilterCondition(DemoModel medicine, String query) {
    return medicine.name.toLowerCase().contains(query.toLowerCase()) ||
        medicine.category.toLowerCase().contains(query.toLowerCase());
  }
}