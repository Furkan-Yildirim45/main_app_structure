
class DemoModel {
  final int id;
  final String name;
  final String category;

  DemoModel({
    required this.id,
    required this.name,
    required this.category,
  });

  @override
  String toString() {
    return 'Medicine(id: $id, name: $name, category: $category)';
  }
}
