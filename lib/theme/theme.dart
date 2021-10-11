import 'package:flutter/material.dart';

extension ThemeDataExt on ThemeData {
  static ThemeData build(String? mode) {
    switch (mode) {
      case 'dark':
        return ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff313131),
          fontFamily: 'Gilroy',
        );
      case 'light':
      default:
        return ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xffF5C300),
          hoverColor: Color(0xffF2F5FD),
          accentColor: Color(0xff040302),
          hintColor: Color(0xffA3A3A3),
          disabledColor: Color(0xffE7E7E7),
          buttonColor: Color(0xffF5C300),
          backgroundColor: Color(0xffffffff),
          errorColor: Color(0xffEC0309),
          shadowColor: Color(0xff7A7A7A),
          colorScheme: ColorScheme.light(
            primary: Color(0xffF5C300),
          ),
          fontFamily: 'Gilroy',
          textTheme: TextTheme(
            bodyText1: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff040302)),
            bodyText2: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff040302)),
            overline: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff040302)),
            button: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff040302)),
            caption: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff040302)),
            headline5: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff040302)),
            headline6: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff040302)),
          ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        );
    }
  }
}
