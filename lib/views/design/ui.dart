import '../../utils/module/module.dart';

import 'package:goodpharm_mobile/utils/SizeUtils.dart';


/// Design System ( UI )
/// * TODO - Slivers 관련 위젯
/// * https://dalgoodori.tistory.com/63
/// *
@Deprecated("삭제 예정")
class DesignSystemUI extends StatelessWidget {
  const DesignSystemUI({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      const Buttons(),
      const Buttons(),
    ];

    return Container(
      width: getScreenWidth(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: children,
          ),
        ),
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

enum SegmentSingle { Day, Week, Month, Year }

enum SegmentMulti { One, Two, Three, Four, Five }

enum RadioOptions { option1, option2, option3 }

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
      // createTextButtons(),
      // verticalPadding,
      // createElevatedButtons(),
      // verticalPadding,
      // createFilledButtons(),
      // verticalPadding,
      // createOutlinedButtons(),
      // verticalPadding,
      // createFABButtons(),
      // verticalPadding,
      // createIconButtons(),
      // verticalPadding,
      // const SingleChoice(),
      // verticalPadding,
      // const MultipleChoice(),
      // verticalPadding,
      // const CheckBoxes(),
      // verticalPadding,
      // const RadioButtons(),
      // verticalPadding,
      // const Switches(),
      // verticalPadding,
      const Chips(),
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
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
                fontWeight: FontWeight.bold),
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
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
                fontWeight: FontWeight.bold),
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
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
                fontWeight: FontWeight.bold),
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
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
                fontWeight: FontWeight.bold),
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
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
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
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
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

// Segmented Button ( Single )
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
          surfaceTintColor:
              MaterialStateProperty.resolveWith((states) => Color(0xffffffff)),
          overlayColor:
              MaterialStateProperty.resolveWith((states) => Color(0xff30C6C0)),
          // shape: MaterialStateProperty.resolveWith((states) => ),
          elevation: MaterialStateProperty.resolveWith((states) => 10.0),
        ));
  }
}

// Segmented Button ( Multi )
class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<StatefulWidget> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<SegmentMulti> selectedDataList = <SegmentMulti>{SegmentMulti.One};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const [
        ButtonSegment(value: SegmentMulti.One, label: Text('One')),
        ButtonSegment(value: SegmentMulti.Two, label: Text('Two')),
        ButtonSegment(value: SegmentMulti.Three, label: Text('Three')),
        ButtonSegment(value: SegmentMulti.Four, label: Text('Four')),
        ButtonSegment(value: SegmentMulti.Five, label: Text('Five')),
      ],
      selected: selectedDataList,
      onSelectionChanged: (select) {
        setState(() {
          selectedDataList = select;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}

/// Checkboxes
class CheckBoxes extends StatefulWidget {
  const CheckBoxes({super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool? isChecked0 = true;
  bool? isChecked1;
  bool? isChecked2 = false;
  bool? isChecked3 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalPadding,
        const Text(
          'CheckBoxes',
          style: TextStyle(
              color: Color(0xff000000),
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
        CheckboxListTile(
            tristate: false,
            value: isChecked0,
            title: const Text('Option 1'),
            onChanged: (value) {
              setState(() {
                isChecked0 = value;
              });
            }),
        CheckboxListTile(
            tristate: true,
            value: isChecked1,
            title: const Text('Option 2'),
            onChanged: (value) {
              setState(() {
                isChecked1 = value;
              });
            }),
        Checkbox(
            tristate: false,
            value: isChecked2,
            activeColor: Colors.green,
            checkColor: Colors.white,
            overlayColor:
                MaterialStateProperty.resolveWith((states) => Colors.red),
            // long click
            onChanged: (value) {
              setState(() {
                isChecked2 = value;
              });
            })
      ],
    );
  }
}

/// Radio buttons
class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  State<StatefulWidget> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  RadioOptions? selected = RadioOptions.option1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalPadding,
        const Text('Radio Button',
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 12,
                fontWeight: FontWeight.bold)),
        RadioListTile(
            value: RadioOptions.option1,
            title: const Text('Option1'),
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            }),
        RadioListTile(
            value: RadioOptions.option2,
            title: const Text('Option2'),
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            }),
        RadioListTile(
            value: RadioOptions.option3,
            title: const Text('Option3'),
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            })
      ],
    );
  }
}

/// Switches
class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  State<StatefulWidget> createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  bool value0 = false;
  bool value1 = false;
  bool value2 = false;

  final MaterialStateProperty<Icon?> thumbIcon1 =
      MaterialStateProperty.resolveWith<Icon?>((states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.check);
    } else {
      return const Icon(Icons.close);
    }
  });

  final MaterialStateProperty<Icon?> thumbIcon2 =
      MaterialStateProperty.resolveWith<Icon?>((states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.gpp_good);
    } else {
      return const Icon(Icons.not_interested);
    }
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalPadding,
        const Text('Switches'),
        verticalPadding,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Switch(
                value: value0,
                onChanged: (value) {
                  setState(() {
                    value0 = value;
                  });
                }),
            Switch(
                value: value1,
                thumbIcon: thumbIcon1,
                onChanged: (value) {
                  setState(() {
                    value1 = value;
                  });
                }),
            Switch(
                value: value2,
                thumbIcon: thumbIcon2,
                activeColor: Colors.white,
                activeTrackColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    value2 = value;
                  });
                }),
          ],
        )
      ],
    );
  }
}

/// Chips
class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<StatefulWidget> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  var isValue0 = false;
  var isValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 20.0,
      children: [
        ActionChip(
          label: const Text('Action'),
          onPressed: () {},
        ),
        ActionChip(
          label: const Text('pizza'),
          avatar: const Icon(Icons.local_pizza_outlined),
          onPressed: () {},
        ),
        FilterChip(
            label: const Text('Filter'),
            showCheckmark: false,
            avatar: const Icon(Icons.add),
            selected: isValue0,
            onSelected: (selected) {
              setState(() {
                isValue0 = selected;
              });
            }),
        FilterChip(
            label: const Text('Filter'),
            pressElevation: 10,
            selected: isValue1,
            onSelected: (selected) {
              setState(() {
                isValue1 = selected;
              });
            }),
        InputChip(
          label: const Text('Input'),
          onPressed: () {
            Fluttertoast.showToast(msg: 'Input pressed..');
          },
          onDeleted: () {
            Fluttertoast.showToast(msg: 'Input deleted..');
          },
        ),
        InputChip(
          label: const Text('Input'),
          onPressed: () {
            Fluttertoast.showToast(msg: 'Input pressed..');
          },
          onDeleted: () {
            Fluttertoast.showToast(msg: 'Input deleted..');
          },
        ),
      ],
    );
  }
}

/// Sliders

/// Progress

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
