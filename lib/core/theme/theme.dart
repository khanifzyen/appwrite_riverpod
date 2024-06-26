import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287187559),
      surfaceTint: Color(4287187559),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957286),
      onPrimaryContainer: Color(4281927459),
      secondary: Color(4285749090),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294892006),
      onSecondaryContainer: Color(4280947998),
      tertiary: Color(4286469432),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958278),
      onTertiaryContainer: Color(4281340929),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965496),
      onBackground: Color(4280359196),
      surface: Color(4294965496),
      onSurface: Color(4280359196),
      surfaceVariant: Color(4294041315),
      onSurfaceVariant: Color(4283450184),
      outline: Color(4286739320),
      outlineVariant: Color(4292133575),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inverseOnSurface: Color(4294831601),
      inversePrimary: Color(4294947025),
      primaryFixed: Color(4294957286),
      onPrimaryFixed: Color(4281927459),
      primaryFixedDim: Color(4294947025),
      onPrimaryFixedVariant: Color(4285412175),
      secondaryFixed: Color(4294892006),
      onSecondaryFixed: Color(4280947998),
      secondaryFixedDim: Color(4292984266),
      onSecondaryFixedVariant: Color(4284038986),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4281340929),
      tertiaryFixedDim: Color(4294032280),
      onTertiaryFixedVariant: Color(4284694051),
      surfaceDim: Color(4293252826),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634222),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844963),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285083467),
      surfaceTint: Color(4287187559),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288897150),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283776070),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287261816),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284430880),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288113484),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965496),
      onBackground: Color(4280359196),
      surface: Color(4294965496),
      onSurface: Color(4280359196),
      surfaceVariant: Color(4294041315),
      onSurfaceVariant: Color(4283187012),
      outline: Color(4285160288),
      outlineVariant: Color(4287002492),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inverseOnSurface: Color(4294831601),
      inversePrimary: Color(4294947025),
      primaryFixed: Color(4288897150),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4286990437),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287261816),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285551711),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288113484),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286337846),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293252826),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634222),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844963),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282453546),
      surfaceTint: Color(4287187559),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285083467),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281408549),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283776070),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281866756),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284430880),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965496),
      onBackground: Color(4280359196),
      surface: Color(4294965496),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294041315),
      onSurfaceVariant: Color(4281082149),
      outline: Color(4283187012),
      outlineVariant: Color(4283187012),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806385),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294960877),
      primaryFixed: Color(4285083467),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283308340),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283776070),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282197552),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284430880),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282721548),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293252826),
      surfaceBright: Color(4294965496),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963443),
      surfaceContainer: Color(4294634222),
      surfaceContainerHigh: Color(4294239464),
      surfaceContainerHighest: Color(4293844963),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294947025),
      surfaceTint: Color(4294947025),
      onPrimary: Color(4283637048),
      primaryContainer: Color(4285412175),
      onPrimaryContainer: Color(4294957286),
      secondary: Color(4292984266),
      onSecondary: Color(4282460723),
      secondaryContainer: Color(4284038986),
      onSecondaryContainer: Color(4294892006),
      tertiary: Color(4294032280),
      onTertiary: Color(4282984463),
      tertiaryContainer: Color(4284694051),
      onTertiaryContainer: Color(4294958278),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279832852),
      onBackground: Color(4293844963),
      surface: Color(4279832852),
      onSurface: Color(4293844963),
      surfaceVariant: Color(4283450184),
      onSurfaceVariant: Color(4292133575),
      outline: Color(4288515218),
      outlineVariant: Color(4283450184),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844963),
      inverseOnSurface: Color(4281806385),
      inversePrimary: Color(4287187559),
      primaryFixed: Color(4294957286),
      onPrimaryFixed: Color(4281927459),
      primaryFixedDim: Color(4294947025),
      onPrimaryFixedVariant: Color(4285412175),
      secondaryFixed: Color(4294892006),
      onSecondaryFixed: Color(4280947998),
      secondaryFixedDim: Color(4292984266),
      onSecondaryFixedVariant: Color(4284038986),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4281340929),
      tertiaryFixedDim: Color(4294032280),
      onTertiaryFixedVariant: Color(4284694051),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280622368),
      surfaceContainerHigh: Color(4281346091),
      surfaceContainerHighest: Color(4282069557),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948564),
      surfaceTint: Color(4294947025),
      onPrimary: Color(4281467421),
      primaryContainer: Color(4291001242),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293247438),
      onSecondary: Color(4280553497),
      secondaryContainer: Color(4289235092),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294360988),
      onTertiary: Color(4280880896),
      tertiaryContainer: Color(4290152038),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279832852),
      onBackground: Color(4293844963),
      surface: Color(4279832852),
      onSurface: Color(4294965753),
      surfaceVariant: Color(4283450184),
      onSurfaceVariant: Color(4292462283),
      outline: Color(4289765028),
      outlineVariant: Color(4287594372),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844963),
      inverseOnSurface: Color(4281346091),
      inversePrimary: Color(4285477968),
      primaryFixed: Color(4294957286),
      onPrimaryFixed: Color(4280942616),
      primaryFixedDim: Color(4294947025),
      onPrimaryFixedVariant: Color(4284097342),
      secondaryFixed: Color(4294892006),
      onSecondaryFixed: Color(4280158996),
      secondaryFixedDim: Color(4292984266),
      onSecondaryFixedVariant: Color(4282855225),
      tertiaryFixed: Color(4294958278),
      onTertiaryFixed: Color(4280355584),
      tertiaryFixedDim: Color(4294032280),
      onTertiaryFixedVariant: Color(4283444756),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280622368),
      surfaceContainerHigh: Color(4281346091),
      surfaceContainerHighest: Color(4282069557),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947025),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294948564),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293247438),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294360988),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279832852),
      onBackground: Color(4293844963),
      surface: Color(4279832852),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283450184),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292462283),
      outlineVariant: Color(4292462283),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293844963),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283110962),
      primaryFixed: Color(4294958825),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294948564),
      onPrimaryFixedVariant: Color(4281467421),
      secondaryFixed: Color(4294958825),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293247438),
      onSecondaryFixedVariant: Color(4280553497),
      tertiaryFixed: Color(4294959567),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294360988),
      onTertiaryFixedVariant: Color(4280880896),
      surfaceDim: Color(4279832852),
      surfaceBright: Color(4282398522),
      surfaceContainerLowest: Color(4279438351),
      surfaceContainerLow: Color(4280359196),
      surfaceContainer: Color(4280622368),
      surfaceContainerHigh: Color(4281346091),
      surfaceContainerHighest: Color(4282069557),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
