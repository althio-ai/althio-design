import 'package:flutter/material.dart';

/// Althio design tokens for Flutter.
/// Generated from tokens.json (source of record) — keep in sync.
///
/// Fonts:
/// - Open Runde: bundle the OTFs from
///   https://github.com/lauridskern/open-runde and register family "Open Runde"
///   in pubspec.yaml (weights 400/500/600/700).
/// - Charter: available on iOS/macOS as "Charter". On Android, bundle
///   Bitstream Charter or accept the Georgia/serif fallback.
abstract final class AlthioColors {
  static const paper = Color(0xFFFBF7F0);
  static const ink = Color(0xFF23201C);
  static const ink72 = Color(0xB823201C);
  static const ink60 = Color(0x9923201C); // large/secondary text only
  static const ink34 = Color(0x5723201C); // decorative only
  static const night = Color(0xFF0B0F1E);
  static const frost = Color(0xFFEDF1FA);
  static const white = Color(0xFFFFFFFF);

  static const sky = Color(0xFF7A9ED0);
  static const skyMid = Color(0xFF8FADD6);
  static const skySoft = Color(0xFFA8C6E8);
  static const lavender = Color(0xFFB9B4DE);
  static const lavenderMid = Color(0xFFADA5DC);
  static const clay = Color(0xFFD9A08F);
  static const claySoft = Color(0xFFE8B7A6);
  static const gold = Color(0xFFC9AF7C);

  // Semantic roles
  static const textPrimary = ink;
  static const textSecondary = ink60;
  static const textMuted = ink34;
  static const textOnDark = frost;
  static const surfacePage = paper;
  static const surfaceCard = Color(0xB8FFFFFF); // white 72%
  static const surfaceDark = night;
  static const borderHairline = Color(0x1423201C); // ink 8%
  static const borderStrong = Color(0x2623201C); // ink 15%
}

abstract final class AlthioSpace {
  static const s1 = 4.0;
  static const s2 = 8.0;
  static const s3 = 12.0;
  static const s4 = 16.0;
  static const s6 = 24.0;
  static const s7 = 28.0;
  static const s8 = 32.0;
  static const s12 = 48.0;
  static const s14 = 56.0;
  static const s16 = 64.0;
  static const s24 = 96.0;
  static const s32 = 128.0;
}

abstract final class AlthioRadius {
  static const pill = 999.0;
  static const card = 28.0;
  static const panel = 18.0;
  static const tile = 14.0;
}

abstract final class AlthioMotion {
  static const easeGentle = Cubic(0.22, 0.9, 0.3, 1);
  static const fast = Duration(milliseconds: 200); // color, opacity
  static const base = Duration(milliseconds: 250); // borders, small moves
  static const slow = Duration(milliseconds: 350); // transform, reveals
}

abstract final class AlthioText {
  static const _serif = 'Charter';
  static const _serifFallback = ['Iowan Old Style', 'Georgia', 'serif'];
  static const _sans = 'Open Runde';

  // Type scale v2: Major Third (1.25) modular scale, base 16.
  // Steps 13/14/16/20/25/31/39/49/61/76. Desktop-1440 sizes;
  // scale display down per breakpoint (76 -> 56 tablet -> 40 phone).
  static const display = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w500, fontSize: 76, height: 1.1,
      letterSpacing: -1.9, color: AlthioColors.textPrimary);
  static const h1Sub = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w500, fontSize: 61, height: 1.1,
      letterSpacing: -1.53, color: AlthioColors.textPrimary);
  static const h2 = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w500, fontSize: 49, height: 1.15,
      letterSpacing: -0.98, color: AlthioColors.textPrimary);
  static const h3 = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w500, fontSize: 39, height: 1.2,
      letterSpacing: -0.78, color: AlthioColors.textPrimary);
  static const h4 = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w500, fontSize: 31, height: 1.25,
      letterSpacing: -0.47, color: AlthioColors.textPrimary);
  static const pull = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w400, fontStyle: FontStyle.italic,
      fontSize: 25, height: 1.35, color: AlthioColors.ink72);
  static const h5 = TextStyle(
      fontFamily: _serif, fontFamilyFallback: _serifFallback,
      fontWeight: FontWeight.w600, fontSize: 20, height: 1.4,
      letterSpacing: -0.2, color: AlthioColors.textPrimary);
  static const lead = TextStyle(
      fontFamily: _sans, fontWeight: FontWeight.w400, fontSize: 20,
      height: 1.5, color: AlthioColors.textSecondary);
  static const body = TextStyle(
      fontFamily: _sans, fontWeight: FontWeight.w400, fontSize: 16,
      height: 1.6, color: AlthioColors.textPrimary);
  static const sm = TextStyle(
      fontFamily: _sans, fontWeight: FontWeight.w500, fontSize: 14,
      height: 1.55, color: AlthioColors.textPrimary);
  static const caption = TextStyle(
      fontFamily: _sans, fontWeight: FontWeight.w400, fontSize: 13,
      height: 1.5, color: AlthioColors.textSecondary);
  static const eyebrow = TextStyle(
      fontFamily: _sans, fontWeight: FontWeight.w500, fontSize: 13,
      height: 1.5, letterSpacing: 1.82, color: AlthioColors.textSecondary);
}

/// Light theme wired to the tokens.
ThemeData althioTheme() => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AlthioColors.surfacePage,
      colorScheme: const ColorScheme.light(
        primary: AlthioColors.ink,
        onPrimary: AlthioColors.paper,
        surface: AlthioColors.paper,
        onSurface: AlthioColors.ink,
        secondary: AlthioColors.sky,
        outline: AlthioColors.borderStrong,
      ),
      textTheme: const TextTheme(
        displayLarge: AlthioText.display,
        displayMedium: AlthioText.h1Sub,
        headlineLarge: AlthioText.h2,
        headlineMedium: AlthioText.h3,
        headlineSmall: AlthioText.h4,
        titleMedium: AlthioText.h5,
        bodyLarge: AlthioText.body,
        bodyMedium: AlthioText.body,
        labelLarge: AlthioText.sm,
        bodySmall: AlthioText.caption,
        labelSmall: AlthioText.caption,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AlthioColors.ink,
          foregroundColor: AlthioColors.paper,
          textStyle: AlthioText.sm,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          shape: const StadiumBorder(),
        ),
      ),
      cardTheme: const CardThemeData(
        color: AlthioColors.surfaceCard,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AlthioRadius.card)),
          side: BorderSide(color: AlthioColors.borderHairline),
        ),
      ),
    );
