import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF9f7bf6), // Primary color
      brightness: Brightness.light,
      primary: const Color(0xFF9F7BF6),  // Primary color
      secondary: const Color(0xFF4ceb8b),  // Secondary color
    ),
    useMaterial3: true,
    // Добавляем стиль для кнопок
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Цвет текста кнопки,
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.white), // Текст кнопок белый
        ),
      ),
    ),
    // Добавляем стиль для BottomNavigationBar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      selectedItemColor: const Color(0xFF9F7BF6).withOpacity(0.8), // Основной цвет для выбранной иконки
      unselectedItemColor: Colors.grey.withOpacity(0.5), // Серый цвет для невыбранных иконок
    ),
  );
}
