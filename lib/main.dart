import 'package:flutter/material.dart';

import 'widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 8, 130, 169));
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EXPENSE TRACKER',
      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        colorScheme: kDarkColorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.onPrimaryContainer,
          foregroundColor: kDarkColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.onPrimaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer)),
        bottomSheetTheme: BottomSheetThemeData().copyWith(
            backgroundColor: kDarkColorScheme.onPrimaryContainer,
            modalBackgroundColor: Color.fromARGB(255, 35, 35, 35)),
        dialogTheme: DialogTheme(
          backgroundColor:
              kDarkColorScheme.onPrimaryContainer, // Dialog background
          surfaceTintColor: Colors.transparent,
        ),
        datePickerTheme: DatePickerThemeData(

        )
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        )),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontSize: 18,
              color: kColorScheme.onSecondaryContainer,
              fontWeight: FontWeight.bold,
            )),
        dialogTheme: DialogTheme(
          backgroundColor: kColorScheme.secondaryContainer,
          surfaceTintColor: Colors.transparent,
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: kColorScheme.secondaryContainer,
          headerBackgroundColor: kColorScheme.primaryContainer,
        ),
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
    );
  }
}
