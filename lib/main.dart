import '../../utils/module/module.dart';

import 'package:goodpharm_mobile/utils/SizeUtils.dart';
import 'package:goodpharm_mobile/views/design/design_system.dart';
import 'package:goodpharm_mobile/views/login/login.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeMode themeMode = ThemeMode.system;
  ColorSeed colorSelected = ColorSeed.baseColor;
  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      colorSelected = ColorSeed.values[value];
      // darkThemeData.colorScheme = colorSelected.color;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = getScreenWidth(context);
    var h = getScreenHeight(context);

    return MaterialApp(
      title: 'GoodPharm-Mobile',
      themeMode: themeMode,
      theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
          colorSchemeSeed: colorSelected.color,
        // textTheme: const TextTheme(
        //     displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)
        // )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
          colorSchemeSeed: colorSelected.color,
        // textTheme: const TextTheme(
        //     displayLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)
        // )
      ),
      // home: Login(),
      home: DesignSystem(
        useLightMode: useLightMode,
        colorSelected: colorSelected,
        handleBrightnessChange: handleBrightnessChange,
        handleColorSelect: handleColorSelect,
      ), // 디자인 시스템
    );
  }

}


