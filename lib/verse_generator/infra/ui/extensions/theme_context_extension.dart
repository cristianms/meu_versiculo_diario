import 'package:flutter/material.dart';

/// Extensão de [BuildContext] que contém métodos úteis relativos ao Tema do aplicativo
extension ThemeContextExtension on BuildContext {
  /// Facilitador de acesso ao tema
  ThemeData get theme => Theme.of(this);

  /// Retorna verdadeiro se o tema do aplicativo está configurado para `light`
  bool get isThemeLight => theme.colorScheme.brightness == Brightness.light;

  /// Facilitador de acesso ao esquema de cores do tema
  ColorScheme get colorScheme => theme.colorScheme;

  /// Retorna a cor primária definida no esquema de cores do tema
  Color get primaryColor => colorScheme.primary;

  /// Facilitador de acesso ao tema de textos
  TextTheme get textTheme => theme.textTheme;

  /// Facilitador de acesso ao tema de textos que utilizam a cor primária
  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  Color getColorByThemeMode({required Color lightColor, required Color darkColor}) {
    return isThemeLight ? lightColor : darkColor;
  }
}
