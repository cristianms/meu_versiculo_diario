import 'package:flutter/material.dart';

/// Extensão de [BuildContext] que contém métodos úteis relativos a tela do dispositivo
///
/// Os métodos devem ser acessados através do [BuildContext]. Por exemplo, para
/// saber se o dispositivo está em modo retrato, use `context.isLandScapeMode`.
extension ContextExtension on BuildContext {
  /// Indica que a orientação do dispositivo do usuário está como Paisagem
  bool get isLandScapeMode => MediaQuery.orientationOf(this) == Orientation.landscape;

  /// Retorna o valor do tema do dispositivo (claro ou escuro)
  Brightness get platformBrightness => MediaQuery.platformBrightnessOf(this);

  /// Retorna verdadeiro se o tema do dispositivo for `light` (claro)
  bool get isLightBrightness => platformBrightness == Brightness.light;

  /// Retorna o [Size] da tela do dispositivo do usuário
  Size get screenSize => MediaQuery.sizeOf(this);

  /// Retorna verdadeiro se o dispositivo tem Notch
  bool get hasNotch => MediaQuery.viewPaddingOf(this).bottom > 0;

  /// Retorna o valor da proporção entre a altura e a largura dos pixels da tela do dispositivo
  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// Retorna o tamanho horizontal (largura) da tela do dispositivo
  double get screenWidth => screenSize.width;

  /// Retorna o tamanho vertical (altura) da tela do dispositivo
  double get screenHeigth => screenSize.height;

  /// Indica que o tamanho de tela do dispositivo do usuário é pequena (aproximadamente 4 polegadas ou menos)
  bool get isSmallScreenPhone => screenSize.width < 359 || (isLandScapeMode && screenWidth < 599);

  /// Indica que o tamanho de tela do dispositivo do usuário é pequena (aproximadamente 4 polegadas ou menos) e está na orientação Paisagem
  bool get isSmallScreenLandScape => isLandScapeMode && screenWidth < 599;

  /// Indica que o tamanho de tela do dispositivo do usuário é média
  bool get isMediumScreenPhone => screenWidth > 360 && screenWidth < 399;

  /// Indica que o tamanho de tela do dispositivo do usuário é grande (aproximadamente 5 polegadas ou mais)
  bool get isLargeScreenPhone => screenWidth > 400 && screenWidth < 599;

  /// Indica que o tamanho de tela do dispositivo do usuário é compatível com tamanho de tela de Tablet's
  bool get isTabletScreen => !isLandScapeMode && screenWidth > 600;

  /// Indica que o tamanho de tela do dispositivo do usuário é compatível com tamanho de tela de Tablet's e está na orientação Paisagem
  bool get isTabletLandScape => isLandScapeMode && screenWidth > 959;

  /// Verifica o tamanho e a posição da tela e retorna o valor adequado
  ///
  /// [landScapeMode] => modo paisagem
  /// [smallScreenLandScape] => modo paisagem em telas menores (devices com aproximadamente 4 polegadas)
  /// [smallScreen] => telas menores (devices com aproximadamente 4 polegadas)
  /// [tabletScreen] => telas maiores (tablets)
  /// [tabletScreenLandScape] => modo paisagem telas maiores (tablets)
  /// [defaultScreen] => valor padrão para outras telas
  double getDoubleByScreenType({
    double? landScapeMode,
    double? smallScreenLandScape,
    double? smallScreen,
    double? tabletScreen,
    double? tabletScreenLandScape,
    double? defaultScreen,
  }) {
    if (isTabletLandScape && tabletScreenLandScape != null) {
      return tabletScreenLandScape;
    }
    if (isTabletScreen && tabletScreen != null) {
      return tabletScreen;
    }
    if (isLandScapeMode && isSmallScreenPhone && smallScreenLandScape != null) {
      return smallScreenLandScape;
    }
    if (isLandScapeMode && landScapeMode != null) {
      return landScapeMode;
    }
    if (isSmallScreenPhone && smallScreen != null) {
      return smallScreen;
    }
    return defaultScreen ?? 0.0;
  }
}
