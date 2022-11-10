const String baseImagePath = 'assets/images/';
const String baseIconImagePath = 'assets/icons/';

// extension function to choose image file format
extension ImageExtension on String {
  String get svg => '$baseImagePath$this.svg';
  String get png => '$baseImagePath$this.png';
  String get ipng => '$baseIconImagePath$this.png';
}

class AppImages {
  static final String logo = 'logo'.png;
  // static final String splashLogo = 'splashLogo'.png;
}

class AppIconImages {
  // static final String indiaFlag = 'india_flag'.ipng;
  // static final String facebook = 'facebook2'.ipng;
  // static final String google = 'google2'.ipng;
}
