import 'package:goodpharm_mobile/views/design/components/actions.dart';

import '../../utils/module/module.dart';

import 'package:goodpharm_mobile/views/design/typography.dart';
import 'package:goodpharm_mobile/views/design/ui.dart';

import 'components/components.dart';

/// Design System Home
class DesignSystem extends StatefulWidget {
  const DesignSystem(
      {super.key,
      required this.useLightMode,
      required this.colorSelected,
      required this.handleBrightnessChange,
      required this.handleColorSelect});

  final bool useLightMode;
  final ColorSeed colorSelected;

  final void Function(bool useLightMode) handleBrightnessChange;
  final void Function(int value) handleColorSelect;

  @override
  State<StatefulWidget> createState() => _DesignSystem();
}

class _DesignSystem extends State<DesignSystem>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int screenIndex = ScreenSelected.ui.value;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        key: scaffoldKey,
        appBar: createAppBar(),
        body: createScreenFor(ScreenSelected.values[screenIndex]),
        bottomNavigationBar: NavigationBars(
          onSelectItem: (index) {
            setState(() {
              screenIndex = index;
              handleScreenChanged(screenIndex);
            });
          },
          selectedIndex: screenIndex,
        ));
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const Text("Design System"),
      actions: [
        _BrightnessButton(
          handleBrightnessChange: widget.handleBrightnessChange,
        ),
        _ColorSeedButton(
          colorSelected: widget.colorSelected,
          handleColorSelect: widget.handleColorSelect,
        )
      ],
    );
  }

  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  Widget createScreenFor(ScreenSelected screenSelected) {
    switch (screenSelected) {
      case ScreenSelected.ui:
        return Components(scaffoldKey : scaffoldKey);
      case ScreenSelected.color: // TODO - color
        return DesignSystemUI(scaffoldKey: scaffoldKey);
      case ScreenSelected.typography:
        return const DesignSystemTypography();
      case ScreenSelected.etc:
        return const DesignSystemTypography();
    }
  }
}

/**
 * App Bar
 * 1. Brightness
 * 2. Color
 */

/// App Bar - Brightness
class _BrightnessButton extends StatelessWidget {
  const _BrightnessButton({
    required this.handleBrightnessChange,
    this.showTooltipBelow = true,
  });

  final Function handleBrightnessChange;
  final bool showTooltipBelow;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      preferBelow: showTooltipBelow,
      message: 'Toggle brightness',
      child: IconButton(
        icon: isBright
            ? const Icon(Icons.dark_mode_outlined)
            : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!isBright),
      ),
    );
  }
}

/// App Bar - Color
class _ColorSeedButton extends StatelessWidget {
  const _ColorSeedButton({
    required this.handleColorSelect,
    required this.colorSelected,
  });

  final void Function(int) handleColorSelect;
  final ColorSeed colorSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.palette_outlined,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      tooltip: 'Select a seed color',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return List.generate(ColorSeed.values.length, (index) {
          ColorSeed currentColor = ColorSeed.values[index];

          return PopupMenuItem(
            value: index,
            enabled: currentColor != colorSelected,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    currentColor == colorSelected
                        ? Icons.color_lens
                        : Icons.color_lens_outlined,
                    color: currentColor.color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(currentColor.label),
                ),
              ],
            ),
          );
        });
      },
      onSelected: handleColorSelect,
    );
  }
}

/// Bottom Navigation
class NavigationBars extends StatefulWidget {
  const NavigationBars(
      {super.key, this.onSelectItem, required this.selectedIndex});

  final void Function(int)? onSelectItem;
  final int selectedIndex;

  @override
  State<StatefulWidget> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  // TODO - 확인바람
  // @override
  // void didUpdateWidget(covariant NavigationBars oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (widget.selectedIndex != oldWidget.selectedIndex) {
  //     selectedIndex = widget.selectedIndex;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        // backgroundColor: Colors.red,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          widget.onSelectItem!(index);
        },
        destinations: navigationItems);
    return navigationBar;
  }
}

const List<NavigationDestination> navigationItems = [
  NavigationDestination(
    icon: Icon(Icons.widgets_outlined),
    label: "Components",
    selectedIcon: Icon(Icons.widgets),
  ),
  NavigationDestination(
    icon: Icon(Icons.format_paint_outlined),
    label: "Color",
    selectedIcon: Icon(Icons.format_paint),
  ),
  NavigationDestination(
      icon: Icon(Icons.text_snippet_outlined),
      label: "Typography",
      selectedIcon: Icon(Icons.text_snippet)),
  NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      label: "Etc",
      selectedIcon: Icon(Icons.settings)),
];
