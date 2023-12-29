import 'package:flutter/material.dart';

import '../../data/constants.dart';

/// Design System ( UI )
/// * TODO - Slivers 관련 위젯
/// * https://dalgoodori.tistory.com/63
/// *
class DesignSystemUI extends StatelessWidget {
  const DesignSystemUI({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const Buttons(),
    ];

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ),
    );
    // return FocusTraversalGroup(
    //     child: CustomScrollView(
    //       slivers: [
    //         SliverPadding(
    //           padding: EdgeInsets.zero,
    //           sliver: SliverList(
    //             delegate: ,
    //
    //           ),
    //         )
    //       ],
    //     )
    // );
  }
}

/// Cards

/// Dividers

/// Text Field ( Input )

/// Buttons
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<StatefulWidget> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  bool isStandardIconSelected = false;
  bool isFilledIconSelected = false;
  bool isOutlinedIconSelected = false;

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(title: "Buttons", children: <Widget>[
      createTextButtons(),
      verticalPadding,
      createElevatedButtons(),
      verticalPadding,
      createFilledButtons(),
      verticalPadding,
      createOutlinedButtons(),
      verticalPadding,
      createFABButtons(),
      verticalPadding,
      createIconButtons(),
      verticalPadding,
      const SingleChoice(),
      verticalPadding,
    ]);
  }

  Widget createTextButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Text(
            "Text Button :",
            style: TextStyle(color: Color(0xff333333), fontSize: 12),
          ),
          horizontalPadding,
          createTextButton("Text", onPressed: () {}),
          horizontalPadding,
          createTextButton("Text"),
          horizontalPadding,
          createTextButton("Text",
              icon: const Icon(Icons.add), onPressed: () {}),
          horizontalPadding,
          createTextButton("Text", icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  Widget createElevatedButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Text(
            "Elevated Button :",
            style: TextStyle(color: Color(0xff333333), fontSize: 12),
          ),
          horizontalPadding,
          createElevatedButton("Elevated", onPressed: () {}),
          horizontalPadding,
          createElevatedButton("Elevated"),
          horizontalPadding,
          createElevatedButton("Elevated",
              icon: const Icon(Icons.add), onPressed: () {}),
          horizontalPadding,
          createElevatedButton("Elevated", icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  Widget createFilledButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Text(
            "Filled Button :",
            style: TextStyle(color: Color(0xff333333), fontSize: 12),
          ),
          horizontalPadding,
          createFilledButton("Filled", onPressed: () {}),
          horizontalPadding,
          createFilledButton("Filled"),
          horizontalPadding,
          createFilledButton("Filled",
              icon: const Icon(Icons.add), onPressed: () {}),
          horizontalPadding,
          createFilledButton("Filled", icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  Widget createOutlinedButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Text(
            "Outlined Button :",
            style: TextStyle(color: Color(0xff333333), fontSize: 12),
          ),
          horizontalPadding,
          createOutlineButton("Outlined", onPressed: () {}),
          horizontalPadding,
          createOutlineButton("Outlined"),
          horizontalPadding,
          createOutlineButton("Outlined",
              icon: const Icon(Icons.add), onPressed: () {}),
          horizontalPadding,
          createOutlineButton("Outlined", icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  Widget createFABButtons() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const Text(
                  "fab Button :",
                  style: TextStyle(color: Color(0xff333333), fontSize: 12),
                ),
                horizontalPadding,
                createFloatingActionButton(const Icon(Icons.add), () {}),
                horizontalPadding,
                createFloatingActionButton(const Icon(Icons.add), () {},
                    label: "Extended", type: FAB_TYPE.EXTENDED),
                horizontalPadding,
                createFloatingActionButton(const Icon(Icons.add), () {},
                    type: FAB_TYPE.STANDARD),
                horizontalPadding,
                createFloatingActionButton(const Icon(Icons.add), () {},
                    type: FAB_TYPE.LARGE),
              ],
            )));
  }

  Widget createIconButtons() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Icon Button :",
              style: TextStyle(color: Color(0xff333333), fontSize: 12),
            ),
            horizontalPadding,
            Column(
              children: [
                createIconButton(const Icon(Icons.settings_outlined), () {
                  setState(() {
                    isStandardIconSelected = !isStandardIconSelected;
                  });
                },
                    isSelected: isStandardIconSelected,
                    selectedIcon: const Icon(Icons.settings)),
                createIconButton(const Icon(Icons.settings_outlined), null,
                    isSelected: isStandardIconSelected,
                    selectedIcon: const Icon(Icons.settings)),
              ],
            ),
            horizontalPadding,
            Column(
              children: [
                createIconButton(const Icon(Icons.settings_outlined), () {
                  setState(() {
                    isFilledIconSelected = !isFilledIconSelected;
                  });
                },
                    isSelected: isFilledIconSelected,
                    selectedIcon: const Icon(Icons.settings),
                    type: IconButtonType.FILLED),
                createIconButton(const Icon(Icons.settings_outlined), null,
                    isSelected: isFilledIconSelected,
                    selectedIcon: const Icon(Icons.settings),
                    type: IconButtonType.FILLED)
              ],
            ),
            horizontalPadding,
            Column(
              children: [
                createIconButton(const Icon(Icons.settings_outlined), () {
                  setState(() {
                    isOutlinedIconSelected = !isOutlinedIconSelected;
                  });
                },
                    isSelected: isOutlinedIconSelected,
                    selectedIcon: const Icon(Icons.settings),
                    type: IconButtonType.OUTLINED),
                createIconButton(const Icon(Icons.settings_outlined), null,
                    isSelected: isOutlinedIconSelected,
                    selectedIcon: const Icon(Icons.settings),
                    type: IconButtonType.OUTLINED)
              ],
            )
          ],
        ));
  }
}

// Text Button
Widget createTextButton(String text, {Icon? icon, VoidCallback? onPressed}) {
  if (icon != null) {
    return TextButton.icon(onPressed: onPressed, icon: icon, label: Text(text));
  } else {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}

// Elevated Button
Widget createElevatedButton(String text,
    {Icon? icon, VoidCallback? onPressed}) {
  if (icon != null) {
    return ElevatedButton.icon(
        onPressed: onPressed, icon: icon, label: Text(text));
  } else {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}

// Filled Button
Widget createFilledButton(String text, {Icon? icon, VoidCallback? onPressed}) {
  if (icon != null) {
    return FilledButton.icon(
        onPressed: onPressed, icon: icon, label: Text(text));
  } else {
    return FilledButton(onPressed: onPressed, child: Text(text));
  }
}

// Outline Button
Widget createOutlineButton(String text, {Icon? icon, VoidCallback? onPressed}) {
  if (icon != null) {
    return OutlinedButton.icon(
        onPressed: onPressed, icon: icon, label: Text(text));
  } else {
    return OutlinedButton(onPressed: onPressed, child: Text(text));
  }
}

// Floating Action Button
enum FAB_TYPE { SMALL, EXTENDED, STANDARD, LARGE }

Widget createFloatingActionButton(Icon icon, VoidCallback onPressed,
    {String? label, FAB_TYPE? type}) {
  if (type == FAB_TYPE.SMALL) {
    return FloatingActionButton.small(onPressed: onPressed, child: icon);
  } else if (type == FAB_TYPE.STANDARD) {
    return FloatingActionButton(onPressed: onPressed, child: icon);
  } else if (type == FAB_TYPE.LARGE) {
    return FloatingActionButton.large(onPressed: onPressed, child: icon);
  } else if (type == FAB_TYPE.EXTENDED) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      icon: icon,
      label: label == null ? const Spacer() : Text(label),
    );
  }
  return FloatingActionButton.small(
    onPressed: onPressed,
    child: icon,
  );
}

// Icon Button
enum IconButtonType { FILLED, OUTLINED, STANDARD }

Widget createIconButton(Icon icon, VoidCallback? onPressed,
    {bool isSelected = false,
    Icon? selectedIcon,
    IconButtonType type = IconButtonType.STANDARD}) {
  if (type == IconButtonType.FILLED) {
    return IconButton.filled(
      isSelected: isSelected,
      icon: icon,
      selectedIcon: selectedIcon,
      onPressed: onPressed,
    );
  } else if (type == IconButtonType.OUTLINED) {
    return IconButton.outlined(
      isSelected: isSelected,
      icon: icon,
      selectedIcon: selectedIcon,
      onPressed: onPressed,
    );
  } else {
    return IconButton(
      isSelected: isSelected,
      icon: icon,
      selectedIcon: selectedIcon,
      onPressed: onPressed,
    );
  }
}

enum SegmentSingle { Day, Week, Month, Year }

// Segmented Button
class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<StatefulWidget> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  SegmentSingle data = SegmentSingle.Day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<SegmentSingle>(
        segments: const <ButtonSegment<SegmentSingle>>[
          ButtonSegment(
              value: SegmentSingle.Day,
              label: Text('Day'),
              icon: Icon(Icons.calendar_view_day)),
          ButtonSegment(
              value: SegmentSingle.Week,
              label: Text('Week'),
              icon: Icon(Icons.calendar_view_week)),
          ButtonSegment(
              value: SegmentSingle.Month,
              label: Text('Month'),
              icon: Icon(Icons.calendar_view_month)),
          ButtonSegment(
              value: SegmentSingle.Year,
              label: Text('Year'),
              icon: Icon(Icons.calendar_today)),
        ],
        selected: <SegmentSingle>{
          data
        },
        onSelectionChanged: (select) {
          setState(() {
            data = select.first;
          });
        },
      style: ButtonStyle(
        // backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0x00000000)),
        // overlayColor: MaterialStateProperty.resolveWith((states) => Theme.of(context).colorScheme.surface),
        surfaceTintColor: MaterialStateProperty.resolveWith((states) => Color(0xffffffff)),
        overlayColor: MaterialStateProperty.resolveWith((states) => Color(0xff30C6C0)),
        // shape: MaterialStateProperty.resolveWith((states) => ),
        elevation: MaterialStateProperty.resolveWith((states) => 10.0),

      )
    );
  }
}

/// Radio buttons

/// Sliders

/// Switches

/// Progress

/// Checkboxes

/// Chips

/// Tab Bar

/// App Bar

/// SnackBar

/// Bottom sheet

/// Dialog

/// Menus ( Drop Down )

/// Date picker

/// Time picker

/// Navigation drawer

/// Component Group Decoration
/// * TODO
/// * - FocusTraversalGroup 뭔지 알아볼 것
class ComponentGroupDecoration extends StatelessWidget {
  const ComponentGroupDecoration(
      {super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
        child: Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            verticalPadding,
            ...children
          ],
        ),
      ),
    ));
  }
}
