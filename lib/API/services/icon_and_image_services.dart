enum ImageFormat { png, jpg, jpeg }

class AppImageUtility {
  static String getImagePath(String imageName, {ImageFormat format = ImageFormat.png}) {
    String extension;
    switch (format) {
      case ImageFormat.jpg:
        extension = 'jpg';
        break;
      case ImageFormat.jpeg:
        extension = 'jpeg';
        break;
      default:
        extension = 'png';
    }
    return "assets/images/$imageName.$extension";
  }
}

enum IconFormat { png }

class AppIconUtility {
  static String getIconPath(String imageName, {IconFormat format = IconFormat.png}) {
    String extension;
    switch (format) {
      case IconFormat.png:
        extension = 'png';
        break;
      // Diğer formatlar eklenebilir, ancak genelde ikonlar PNG formatını destekler
      default:
        extension = 'png';
    }
    return 'assets/icons/$imageName.$extension';
  }
}
