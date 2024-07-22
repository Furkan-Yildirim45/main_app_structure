
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomSearchBarController<T> extends GetxController {
  var searchControllerEditing = TextEditingController().obs;
  var filteredItems = <T>[].obs;
  var isLoading = false.obs;
  var isSearch = false.obs;

  final bool Function(T, String) filterCondition;
  final List<T> initialItems;
  final ValueChanged<List<T>> onFilteredItemsChanged;

  CustomSearchBarController({
    required this.filterCondition,
    required this.initialItems,
    required this.onFilteredItemsChanged,
  }) {
    filteredItems.value = initialItems;
  }

  void filterItems(String query) {
    if (query.isEmpty) {
      filteredItems.value = initialItems;
    } else {
      filteredItems.value = initialItems.where((item) => filterCondition(item, query)).toList();
    }
    onFilteredItemsChanged(filteredItems);
  }

  void resetFilter(BuildContext context) {
    filteredItems.value = initialItems;
    isSearch.value = false;
    FocusScope.of(context).unfocus();
    searchControllerEditing.value.text = "";
    onFilteredItemsChanged(filteredItems);
    update();
  }
}
