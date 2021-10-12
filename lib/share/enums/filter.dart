import 'package:foto/share/share.dart';

enum Filter {
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
}

extension FilterEx on Filter {
  static const _titles = [
    'Identity',
    'Sepia',
    'Greyscale',
    'Vintage',
    'Sweet',
    'Milk',
    'Sepium',
    'Cold Life',
    'Old Time',
    'Purple',
    'Yellow',
    'Cyan',
    'Invert'
  ];

  static const _texts = [
    'identity',
    'sepia',
    'greyscale',
    'vintage',
    'sweet',
    'milk',
    'sepium',
    'cold_life',
    'old_time',
    'purple',
    'yellow',
    'cyan',
    'invert'
  ];

  String get title => _titles[index];

  String get text => _texts[index];

  static Filter fromText(String? txt) {
    if (txt != null && _texts.contains(txt.toLowerCase().trim())) {
      return Filter.values[_texts.indexOf(txt.toLowerCase().trim())];
    }
    return Filter.IDENTITY;
  }

  List<double> get matrix {
    switch (this) {
      case Filter.IDENTITY:
        return FilterMatrix.IDENTITY;
      case Filter.SEPIA:
        return FilterMatrix.SEPIA;
      case Filter.GREYSCALE:
        return FilterMatrix.GREYSCALE;
      case Filter.VINTAGE:
        return FilterMatrix.VINTAGE;
      case Filter.SWEET:
        return FilterMatrix.SWEET;
      case Filter.MILK:
        return FilterMatrix.MILK;
      case Filter.SEPIUM:
        return FilterMatrix.SEPIUM;
      case Filter.COLD_LIFE:
        return FilterMatrix.COLD_LIFE;
      case Filter.OLD_TIME:
        return FilterMatrix.OLD_TIME;
      case Filter.PURPLE:
        return FilterMatrix.PURPLE;
      case Filter.YELLOW:
        return FilterMatrix.YELLOW;
      case Filter.CYAN:
        return FilterMatrix.CYAN;
      case Filter.INVERT:
        return FilterMatrix.INVERT;
      default:
        return FilterMatrix.IDENTITY;
    }
  }
}
