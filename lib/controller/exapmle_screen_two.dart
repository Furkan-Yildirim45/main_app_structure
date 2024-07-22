import 'package:get/get.dart';
import 'package:main_app_structure/model/demo_movie_model.dart';

class ExapmleScreenTwoController extends GetxController {
  var items = <MovieModel>[].obs;
  var filteredItems = <MovieModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.value = sampleMedicines;
    filteredItems.value = sampleMedicines;
  }

  void updateFilteredItems(List<MovieModel> newFilteredItems) {
    filteredItems.value = newFilteredItems;
  }

  final List<MovieModel> sampleMedicines = [
    MovieModel(
        id: 1,
        title: "Inception",
        director: "Christopher Nolan",
        genre: "Science Fiction"),
    MovieModel(
        id: 2,
        title: "The Godfather",
        director: "Francis Ford Coppola",
        genre: "Crime"),
    MovieModel(
        id: 3,
        title: "The Shawshank Redemption",
        director: "Frank Darabont",
        genre: "Drama"),
    MovieModel(
        id: 4,
        title: "Pulp Fiction",
        director: "Quentin Tarantino",
        genre: "Crime"),
    MovieModel(
        id: 5,
        title: "The Dark Knight",
        director: "Christopher Nolan",
        genre: "Action"),
  ];
}
