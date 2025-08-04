
import 'package:educhamp/product/controller/general_searchbar_widget_controller.dart' show CustomSearchBarController;
import 'package:educhamp/product/utils/app_general.dart';
import 'package:educhamp/product/utils/const_utils/app_colors.dart' show AppColor, AppColorExtension;
import 'package:educhamp/product/utils/const_utils/app_padding.dart' show AppPadding;
import 'package:educhamp/product/utils/const_utils/app_sizes.dart' show AppSizes;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomGeneralSearchBar<T> extends StatelessWidget {
  const CustomGeneralSearchBar({
    super.key,
    this.onChanged,
    required this.filterCondition,
    required this.initialItems,
    required this.onFilteredItemsChanged,
  });

  final ValueChanged<String>? onChanged;
  final bool Function(T, String) filterCondition;
  final List<T> initialItems;
  final ValueChanged<List<T>> onFilteredItemsChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.instance.topSmall,
      child: Row(
        children: [
          Expanded(
            child: GetBuilder<CustomSearchBarController<T>>(
              init: Get.put(CustomSearchBarController<T>(
                filterCondition: filterCondition,
                initialItems: initialItems,
                onFilteredItemsChanged: onFilteredItemsChanged,
              )),
              builder: (controller) => Container(
                height: AppSizes.instance.xxLargeValue,
                decoration: _buildMainContainerDecoration(context),
                child: Row(
                  children: [
                    _buildSearchIcon(context, controller),
                    _buildSearchBarTextField(context, controller),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildSearchBarTextField(
    BuildContext context,
    CustomSearchBarController<T> controller,
  ) {
    return Expanded(
      child: Padding(
        padding: AppPadding.instance.leftNormal,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: Get.height * 0.013, right: AppSizes.instance.normalValue),
          child: TextField(
            onTap: () {
              controller.isSearch.value = true;
            },
            controller: controller.searchControllerEditing.value,
            onChanged: (query) {
              controller.filterItems(query);
              if (onChanged != null) onChanged!(query);
            },
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Aramak istediğiniz kelimeyi yazın",
              hintStyle: context.appGeneral.textTheme.titleSmall?.copyWith(
                color: AppColor.green.getColor(),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildMainContainerDecoration(BuildContext context) {
    return BoxDecoration(
      color: AppColor.white.getColor(),
      border: Border.all(color: Colors.black12),
      borderRadius: BorderRadius.circular(Get.height * 0.02),
    );
  }

  Padding _buildSearchIcon(
    BuildContext context,
    CustomSearchBarController<T> controller,
  ) {
    return Padding(
      padding:  AppPadding.instance.leftNormal,
      child: Obx(
        () => IconButton(
          icon: Icon(
            controller.isSearch.value ? Icons.arrow_back : Icons.search,
            color: AppColor.green.getColor(),
          ),
          onPressed: () {
            if (controller.isSearch.value) {
              controller.resetFilter(context);
            } else {
              controller.isSearch.value = true;
            }
          },
        ),
      ),
    );
  }
}
