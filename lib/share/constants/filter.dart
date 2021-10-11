class Filter {
  Filter._();

  static const filters = [
    IDENTITY,
    SEPIA,
    GREYSCALE,
    VINTAGE,
    SWEET,
    MILK,
    SEPIUM,
    COLD_LIFE,
    OLD_TIME,
    PURPLE,
    YELLOW,
    CYAN,
    INVERT,
  ];

  static const List<double> IDENTITY = [
    1, 0, 0, 0, 0,
    0, 1, 0, 0, 0,
    0, 0, 1, 0, 0,
    0, 0, 0, 1, 0,
  ];
  static const List<double> INVERT = [
    -1,  0,  0, 0, 255,
    0, -1,  0, 0, 255,
    0,  0, -1, 0, 255,
    0,  0,  0, 1,   0,
  ];

  static const List<double> SEPIA = [
    0.39, 0.769, 0.189, 0.0, 0.0,
    0.349, 0.686, 0.168, 0.0, 0.0,
    0.272, 0.534, 0.131, 0.0, 0.0,
    0.0, 0.0, 0.0, 1.0, 0.0];

  static const List<double> GREYSCALE = [
    0.2126, 0.7152, 0.0722, 0.0, 0.0,
    0.2126, 0.7152, 0.0722, 0.0, 0.0,
    0.2126, 0.7152, 0.0722, 0.0, 0.0,
    0.0, 0.0, 0.0, 1.0, 0.0];

  static const List<double> VINTAGE = [
    0.9, 0.5, 0.1, 0.0, 0.0,
    0.3, 0.8, 0.1, 0.0, 0.0,
    0.2, 0.3, 0.5, 0.0, 0.0,
    0.0, 0.0, 0.0, 1.0, 0.0];

  static const List<double> SWEET = [
    1.0, 0.0, 0.2, 0.0, 0.0,
    0.0, 1.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 1.0, 0.0];

  static const List<double> MILK = [
    0, 1.0, 0, 0, 0,
    0, 1.0, 0, 0, 0,
    0, 0.6, 1, 0, 0,
    0, 0, 0, 1, 0];

  static const List<double> SEPIUM = [
    1.3, -0.3, 1.1, 0, 0,
    0, 1.3, 0.2, 0, 0,
    0, 0, 0.8, 0.2, 0,
    0, 0, 0, 1, 0];

  static const List<double> COLD_LIFE = [
    1, 0, 0, 0, 0,
    0, 1, 0, 0, 0,
    -0.2, 0.2, 0.1, 0.4, 0,
    0, 0, 0, 1, 0];

  static const List<double> OLD_TIME = [
    1, 0, 0, 0, 0,
    -0.4, 1.3, -0.4, 0.2, -0.1,
    0, 0, 1, 0, 0,
    0, 0, 0, 1, 0];

  static const List<double> YELLOW = [
    1, 0, 0, 0, 0,
    -0.2, 1.0, 0.3, 0.1, 0,
    -0.1, 0, 1, 0, 0,
    0, 0, 0, 1, 0];

  static const List<double> CYAN = [
    1, 0, 0, 1.9, -2.2,
    0, 1, 0, 0.0, 0.3,
    0, 0, 1, 0, 0.5,
    0, 0, 0, 1, 0.2,];

  static const List<double> PURPLE = [
    1, -0.2, 0, 0, 0,
    0, 1, 0, -0.1, 0,
    0, 1.2, 1, 0.1, 0,
    0, 0, 1.7, 1, 0];
}