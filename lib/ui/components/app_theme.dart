import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  const disabledButton = Color.fromRGBO(117, 117, 117, 1);
  const primaryColor = Color.fromRGBO(255, 140, 0, 1);
  const primaryColorDark = Color.fromRGBO(255, 102, 0, 1);
  const primaryColorLight = Color.fromRGBO(255, 151, 60, 1);
  const textTheme = TextTheme(
    headlineLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: primaryColorDark),
  );
  final inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    floatingLabelStyle: const TextStyle(color: primaryColorLight),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black26, width: 1.5),
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.orange, width: 1.5),
      borderRadius: BorderRadius.circular(5),
    ),
    alignLabelWithHint: true,
  );
  final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return primaryColor.withOpacity(0.5);
          } else if (states.contains(MaterialState.disabled)) {
            return Colors.grey;
          }
          return primaryColor;
        },
      ),
      overlayColor: const MaterialStatePropertyAll(primaryColorLight),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      ),
      foregroundColor: const MaterialStatePropertyAll(Colors.white),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: disabledButton,
    primaryColorLight: primaryColorLight,
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonThemeData,
    splashColor: primaryColorLight,
  );
}
