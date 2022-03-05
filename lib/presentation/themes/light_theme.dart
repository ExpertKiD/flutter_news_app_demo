part of 'theme.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Quicksand',
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  appBarTheme: const AppBarTheme(
    color: AppColors.primaryColor,
  ),
  colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: AppColors.colorSchemeSecondary,
      ),
  textTheme: ThemeData.light().textTheme.copyWith(
        headline2: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF252837),
        ),
      ),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return AppColors.colorSchemeSecondary;
      } else {
        return const Color(0xFF646E77);
      }
    }),
    textStyle: MaterialStateProperty.all(const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    )),
  )),
);
