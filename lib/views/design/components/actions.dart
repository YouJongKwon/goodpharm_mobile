import 'package:goodpharm_mobile/utils/module/module.dart';

/// Actions
class ActionLayer extends StatefulWidget {
  const ActionLayer({super.key});

  // const ActionLayer({super.key});

  @override
  State<StatefulWidget> createState() => _ActionsState();
}

class _ActionsState extends State<ActionLayer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // const CommonButtons(),
          // verticalPadding,
          // IconButtons(),
          // verticalPadding,
          // ChipButtons(),
          // verticalPadding,
          // const RadioButtons(),
          // verticalPadding,
          // const CheckBoxButtons(),
          // verticalPadding,
          // const Switches(),
          // verticalPadding,
          const SegmentedButtons(),
          verticalPadding,
        ],
      ),
    );
  }
}

/// Common buttons
class CommonButtons extends StatelessWidget {
  const CommonButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardDecoration(title: 'Common buttons', widgets: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CommonDefaultButtons(),
            CommonDisableButtons(),
            CommonIconButtons(),
            CommonDisableIconButtons()
          ],
        ),
      )
    ]);
  }
}

class CommonDefaultButtons extends StatelessWidget {
  const CommonDefaultButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: commonPadding,
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Text button click!');
                  },
                  child: const Text('Text')),
              verticalPadding,
              ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Elevated button click!');
                  },
                  child: const Text('Elevated')),
              verticalPadding,
              FilledButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Filed button click!');
                  },
                  child: const Text('Filed')),
              verticalPadding,
              OutlinedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Outlined button click!');
                  },
                  child: const Text('Outlined')),
              verticalPadding,
            ],
          ),
        ));
  }
}

class CommonDisableButtons extends StatelessWidget {
  const CommonDisableButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: commonPadding,
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(onPressed: null, child: Text('Text')),
              verticalPadding,
              ElevatedButton(onPressed: null, child: Text('Elevated')),
              verticalPadding,
              FilledButton(onPressed: null, child: Text('Filed')),
              verticalPadding,
              OutlinedButton(onPressed: null, child: Text('Outlined')),
              verticalPadding,
            ],
          ),
        ));
  }
}

class CommonIconButtons extends StatelessWidget {
  const CommonIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: commonPadding,
        child: IntrinsicWidth(
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Icon button click! (Text)');
                  },
                  icon: Icon(Icons.add),
                  label: Text('icon')),
              verticalPadding,
              ElevatedButton.icon(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Icon button click! (Elevated)');
                  },
                  icon: Icon(Icons.add),
                  label: Text('icon')),
              verticalPadding,
              FilledButton.icon(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Icon button click! (Filed)');
                  },
                  icon: Icon(Icons.add),
                  label: Text('icon')),
              verticalPadding,
              OutlinedButton.icon(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Icon button click! (Outlined)');
                  },
                  icon: Icon(Icons.add),
                  label: Text('icon')),
              verticalPadding,
            ],
          ),
        ));
  }
}

class CommonDisableIconButtons extends StatelessWidget {
  const CommonDisableIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: commonPadding,
        child: IntrinsicWidth(
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: null, icon: Icon(Icons.add), label: Text('icon')),
              verticalPadding,
              ElevatedButton.icon(
                  onPressed: null, icon: Icon(Icons.add), label: Text('icon')),
              verticalPadding,
              FilledButton.icon(
                  onPressed: null, icon: Icon(Icons.add), label: Text('icon')),
              verticalPadding,
              OutlinedButton.icon(
                  onPressed: null, icon: Icon(Icons.add), label: Text('icon')),
              verticalPadding,
            ],
          ),
        ));
  }
}

/// Icon buttons
class IconButtons extends StatefulWidget {
  IconButtons({super.key});

  bool isValue01 = false;
  bool isValue02 = false;
  bool isValue03 = false;

  @override
  State<StatefulWidget> createState() => _IconButtonsState();
}

class _IconButtonsState extends State<IconButtons> {
  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Icon buttons', widgets: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          horizontalPadding,
          Column(
            children: [
              IconButton(
                isSelected: widget.isValue01,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    widget.isValue01 = !widget.isValue01;
                  });
                },
              ),
              verticalPadding,
              IconButton(
                isSelected: widget.isValue01,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: null,
              ),
            ],
          ),
          horizontalPadding,
          Column(
            children: [
              IconButton.filled(
                isSelected: widget.isValue02,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    widget.isValue02 = !widget.isValue02;
                  });
                },
              ),
              verticalPadding,
              IconButton.filled(
                isSelected: widget.isValue02,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: null,
              )
            ],
          ),
          horizontalPadding,
          Column(
            children: [
              IconButton.outlined(
                isSelected: widget.isValue03,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    widget.isValue03 = !widget.isValue03;
                  });
                },
              ),
              verticalPadding,
              IconButton.outlined(
                isSelected: widget.isValue03,
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                onPressed: null,
              )
            ],
          ),
          horizontalPadding,
        ],
      )
    ]);
  }
}

/// Chip buttons
class ChipButtons extends StatefulWidget {
  ChipButtons({super.key});

  bool isValue01 = false;
  bool isValue02 = false;
  bool isValue03 = false;
  bool isValue04 = false;
  bool isValue05 = false;
  bool isValue06 = false;

  @override
  State<StatefulWidget> createState() => _ChipButtonsState();
}

class _ChipButtonsState extends State<ChipButtons> {
  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Chips', widgets: [
      Wrap(
        spacing: 10,
        runSpacing: 5,
        children: [
          ActionChip(
            label: const Text('Action'),
            avatar: const Icon(Icons.add),
            onPressed: () {},
          ),
          FilterChip(
            label: const Text('Filter1'),
            selected: widget.isValue01,
            onSelected: (selected) {
              setState(() {
                widget.isValue01 = selected;
              });
            },
          ),
          FilterChip(
            label: const Text('Filter2'),
            showCheckmark: false,
            selected: widget.isValue02,
            onSelected: (selected) {
              setState(() {
                widget.isValue02 = selected;
              });
            },
          ),
          FilterChip(
            label: const Text('Filter3'),
            showCheckmark: false,
            avatar: const Icon(Icons.ac_unit_sharp),
            selected: widget.isValue03,
            onSelected: (selected) {
              setState(() {
                widget.isValue03 = selected;
              });
            },
          ),
          InputChip(
              label: const Text('Input'),
              selected: widget.isValue04,
              onSelected: (selected) {
                setState(() {
                  widget.isValue04 = selected;
                });
              }),
          InputChip(
            label: const Text('Input'),
            selected: widget.isValue05,
            selectedColor: Colors.greenAccent,
            deleteIconColor: Colors.deepOrange,
            onSelected: (selected) {
              setState(() {
                widget.isValue05 = selected;
              });
            },
            onDeleted: () {
              setState(() {
                widget.isValue05 = false;
              });
            },
          ),
        ],
      )
    ]);
  }
}

/// Radio buttons
enum Options { option1, option2, option3 }

class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  State<StatefulWidget> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  Options? _selected = Options.option1;

  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Radio buttons', widgets: [
      RadioListTile(
          value: Options.option1,
          title: const Text('Option 1'),
          groupValue: _selected,
          onChanged: (selected) {
            setState(() {
              _selected = selected;
            });
          }),
      RadioListTile(
          value: Options.option2,
          title: const Text('Option 2'),
          groupValue: _selected,
          onChanged: (selected) {
            setState(() {
              _selected = selected;
            });
          }),
      RadioListTile(
          value: Options.option3,
          title: const Text('Option 3'),
          groupValue: _selected,
          onChanged: (selected) {
            setState(() {
              _selected = selected;
            });
          }),
    ]);
  }
}

/// Check Box Buttons
class CheckBoxButtons extends StatefulWidget {
  const CheckBoxButtons({super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxButtons();
}

class _CheckBoxButtons extends State<CheckBoxButtons> {
  bool? isChecked1 = true;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Checkbox Buttons', widgets: [
      CheckboxListTile(
          value: isChecked1,
          title: const Text('Option 1'),
          onChanged: (selected) {
            setState(() {
              isChecked1 = selected;
            });
          }),
      CheckboxListTile(
          value: isChecked2,
          title: const Text('Option 2'),
          onChanged: (selected) {
            setState(() {
              isChecked2 = selected;
            });
          }),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: CheckboxListTile(
                  value: isChecked3,
                  title: const Text('Option 3'),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (selected) {
                    setState(() {
                      isChecked3 = selected;
                    });
                  })),
          Expanded(
              child: CheckboxListTile(
                  value: isChecked4,
                  title: const Text('Option 4'),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (selected) {
                    setState(() {
                      isChecked4 = selected;
                    });
                  })),
        ],
      )
    ]);
  }
}

/// Switches
class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  State<StatefulWidget> createState() => _Switches();
}

class _Switches extends State<Switches> {
  bool isValue1 = false;
  bool isValue2 = false;
  bool isValue3 = false;

  @override
  Widget build(BuildContext context) {
    // icon
    var thumbIcon1 = MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected)
            ? const Icon(Icons.check)
            : const Icon(Icons.people));

    var thumbIcon2 = MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.selected)
            ? const Icon(Icons.check)
            : const Icon(Icons.close));

    return CardDecoration(title: 'Switches', widgets: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Switch(
              value: isValue1,
              onChanged: (selected) {
                setState(() {
                  isValue1 = selected;
                });
              }),
          Switch(
              value: isValue2,
              thumbIcon: thumbIcon1,
              trackOutlineColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.blueGrey),
              activeColor: Colors.green,
              activeTrackColor: Colors.white,
              onChanged: (selected) {
                setState(() {
                  isValue2 = selected;
                });
              }),
          Switch(
              value: isValue3,
              thumbIcon: thumbIcon2,
              activeColor: Colors.green,
              onChanged: (selected) {
                setState(() {
                  isValue3 = selected;
                });
              }),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Switch(value: isValue1, onChanged: null),
          Switch(
              value: isValue2,
              thumbIcon: thumbIcon1,
              trackOutlineColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.blueGrey),
              activeColor: Colors.green,
              activeTrackColor: Colors.white,
              onChanged: null),
          Switch(
              value: isValue3,
              thumbIcon: thumbIcon2,
              activeColor: Colors.green,
              onChanged: null),
        ],
      ),
    ]);
  }
}

/// Segmented buttons
enum SingleOption { Day, Week, Month, Year }

enum MultiOption { One, Two, Three, Four, Five }

class SegmentedButtons extends StatefulWidget {
  const SegmentedButtons({super.key});

  @override
  State<StatefulWidget> createState() => _SegmentedButtonsState();
}

class _SegmentedButtonsState extends State<SegmentedButtons> {
  SingleOption value = SingleOption.Day;
  Set<MultiOption> value2 = <MultiOption> { MultiOption.One };

  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Segmented buttons', widgets: [
      SegmentedButton(
        selected: <SingleOption>{value},
        segments: const [
          ButtonSegment(
              value: SingleOption.Day,
              label: Text('Day'),
              icon: Icon(Icons.calendar_view_day)),
          ButtonSegment(
              value: SingleOption.Week,
              label: Text('Week'),
              icon: Icon(Icons.calendar_view_week)),
          ButtonSegment(
              value: SingleOption.Month,
              label: Text('Month'),
              icon: Icon(Icons.calendar_month)),
          ButtonSegment(
              value: SingleOption.Year,
              label: Text('Year'),
              icon: Icon(Icons.calendar_today)),
        ],
        onSelectionChanged: (selected) {
          setState(() {
            value = selected.first;
          });
        },
      ),
      verticalPadding,
      SegmentedButton (
        segments: const [
          ButtonSegment(
              value: MultiOption.One,
              label: Text('One')
          ),
          ButtonSegment(
              value: MultiOption.Two,
              label: Text('Two')
          ),
          ButtonSegment(
              value: MultiOption.Three,
              label: Text('Three')
          ),
          ButtonSegment(
              value: MultiOption.Four,
              label: Text('Four')
          ),
          ButtonSegment(
              value: MultiOption.Five,
              label: Text('Five')
          ),
        ],
        selected: value2,
        showSelectedIcon: false,
        onSelectionChanged: (selected) {
          setState(() {
            value2 = selected;
          });
        },
        multiSelectionEnabled: true,
      ),
    ]);
  }
}

/// Common Card
class CardDecoration extends StatefulWidget {
  const CardDecoration({super.key, required this.title, required this.widgets});

  final String title;
  final List<Widget> widgets;

  @override
  State<StatefulWidget> createState() => _CardDecoration();
}

class _CardDecoration extends State<CardDecoration> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
          padding: commonPadding,
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 450),
            child: Focus(
              child: Card(
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: commonPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verticalPadding,
                      Text(widget.title,
                          style:
                          TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 12)),
                      verticalPadding,
                      Column(
                        children: widget.widgets,
                      ),
                      verticalPadding,
                    ],
                  ),
                )
              ),
            ),
          )),
    );
  }
}
