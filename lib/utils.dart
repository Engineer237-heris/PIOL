import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_platform/simple_platform.dart';

final locale = WidgetsBinding.instance.platformDispatcher.locale;
final isIOS = DevicePlatform.isIOS;
final isWindows = DevicePlatform.isWindows;
final isMacOS = DevicePlatform.isMacOS;
final isAndroid = DevicePlatform.isAndroid;
final locales = WidgetsBinding.instance.platformDispatcher.locales;
const snackBar = SnackBar(
  content: Text('Oups,option indisponible'),
);

ThemeData themeData = ThemeData(
  primarySwatch: Colors.brown,
  inputDecorationTheme: const InputDecorationTheme(
    errorBorder: OutlineInputBorder(borderSide: BorderSide()),
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(),
    errorMaxLines: 5,
  ),
  colorScheme: ColorScheme.light(
   primary: Color.fromRGBO(115, 29, 9, 1),
   onPrimary: Colors.white,
   secondary: Color.fromRGBO(108, 140, 86, 1),
   onSecondary: Colors.white,
   tertiary: Color.fromRGBO(173, 209, 217, 1)

  ),
  
  cardColor: const Color.fromRGBO(204, 174, 141, 1),
  dividerColor: const Color.fromRGBO(204, 174, 141, 1),

  hintColor: Colors.black,
  hoverColor: const Color.fromRGBO(249, 236, 221, 1),
  secondaryHeaderColor: const Color.fromRGBO(153, 117, 75, 1),
  shadowColor: const Color.fromRGBO(204, 174, 141, 1),
  // TYPOGRAPHY & ICONOGRAPHY
  fontFamily: GoogleFonts.roboto().fontFamily,
  iconTheme: const IconThemeData(color: Color.fromRGBO(153, 117, 75, 1)),
  // COMPONENT THEMES
  badgeTheme: const BadgeThemeData(
      textColor: Colors.white,
      backgroundColor: Color.fromRGBO(153, 117, 75, 1)),
  bannerTheme: const MaterialBannerThemeData(
      backgroundColor: Color.fromRGBO(153, 117, 75, 1),
      contentTextStyle: TextStyle(color: Colors.white)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: Color.fromRGBO(153, 117, 75, 1)),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Color.fromRGBO(204, 174, 141, 1),
  ),

  buttonTheme: const ButtonThemeData(
      textTheme: ,
      buttonColor: Color.fromRGBO(204, 174, 141, 1), hoverColor: Colors.black26),
  chipTheme: const ChipThemeData(
      backgroundColor: Color.fromRGBO(204, 174, 141, 1),
      selectedColor: Color.fromRGBO(153, 117, 75, 1),
      iconTheme: IconThemeData(color: Colors.white)),
  /*dataTableTheme,*/
  datePickerTheme: const DatePickerThemeData(
    rangePickerHeaderBackgroundColor: Color.fromRGBO(204, 174, 141, 1),
    dayStyle: TextStyle(color: Colors.white),
  ),

  dividerTheme: const DividerThemeData(color: Color.fromRGBO(204, 174, 141, 1)),
  drawerTheme:
      const DrawerThemeData(backgroundColor: Color.fromRGBO(153, 117, 75, 1)),
  elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle()),
  
  /*expansionTileTheme,
    filledButtonTheme,
  floatingActionButtonTheme,
    iconButtonTheme,
    listTileTheme,
   menuBarTheme,
    menuButtonTheme,
    menuTheme,
   navigationBarTheme,
   navigationDrawerTheme,
    navigationRailTheme,
  outlinedButtonTheme,
    popupMenuTheme,
    progressIndicatorTheme,
    radioTheme,
   searchBarTheme,
   searchViewTheme,
    segmentedButtonTheme,
   sliderTheme,
   snackBarTheme,
    switchTheme,
    tabBarTheme,
    textButtonTheme,
   textSelectionTheme,
    timePickerTheme,
   toggleButtonsTheme,*/
);

enum TypSign {
  signInUp,
  getEmailPhone,
  codeVerification,
  newPassword

}
