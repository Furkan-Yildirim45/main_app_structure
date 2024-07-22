
import 'package:get/get.dart';
import 'package:main_app_structure/model/demo_model.dart';

class ExapmleScreenController extends GetxController {
  var items = <DemoModel>[].obs;
  var filteredItems = <DemoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.value = sampleMedicines;
    filteredItems.value = sampleMedicines;
  }

  void updateFilteredItems(List<DemoModel> newFilteredItems) {
    filteredItems.value = newFilteredItems;
  }

  final List<DemoModel> sampleMedicines = [
  DemoModel(id: 1, name: "Paracetamol", category: "Painkiller"),
  DemoModel(id: 2, name: "Amoxicillin", category: "Antibiotic"),
  DemoModel(id: 3, name: "Cetirizine", category: "Antihistamine"),
];
}
