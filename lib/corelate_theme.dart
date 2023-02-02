import 'package:flutter/material.dart';

const Color primary = Color.fromRGBO(255, 168, 0, 1);
const Color primaryDark = Color.fromRGBO(255, 168, 0, 1);

@immutable
class CorelateTheme extends ThemeExtension<CorelateTheme> {
  const CorelateTheme({
    this.primaryColor = primary,
  });

  final Color primaryColor;

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
    );
  }

  @override
  ThemeExtension<CorelateTheme> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) =>
      CorelateTheme(
        primaryColor: primaryColor ?? this.primaryColor,
      );

  @override
  ThemeExtension<CorelateTheme> lerp(
      covariant ThemeExtension<CorelateTheme>? other, double t) {
    if (other is! CorelateTheme) return this;
    return CorelateTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
    );
  }
}

@immutable
class CorelateDarkTheme extends ThemeExtension<CorelateDarkTheme> {
  const CorelateDarkTheme({
    this.primaryColor = primaryDark,
  });

  final Color primaryColor;

  ThemeData toThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
      ),
    );
  }

  @override
  ThemeExtension<CorelateDarkTheme> copyWith({
    Color? primaryColor,
  }) =>
      CorelateDarkTheme(
        primaryColor: primaryColor ?? this.primaryColor,
      );

  @override
  ThemeExtension<CorelateDarkTheme> lerp(
      covariant ThemeExtension<CorelateDarkTheme>? other, double t) {
    if (other is! CorelateDarkTheme) return this;
    return CorelateDarkTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
    );
  }
}
