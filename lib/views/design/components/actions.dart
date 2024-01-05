import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:goodpharm_mobile/data/constants.dart';
import 'package:goodpharm_mobile/utils/module/module.dart';

class ActionLayer extends StatefulWidget {
  const ActionLayer({super.key});

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
          CommonButtons(),
          verticalPadding,
          IconButtons(),
          verticalPadding,
          ChipButtons(),
          verticalPadding,
        ],
      ),
    );
  }
}

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

class ChipButtons extends StatefulWidget {
  ChipButtons({super.key});

  bool isValue01 = false;
  bool isValue02 = false;
  bool isValue03 = false;
  bool isValue04 = false;

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
                widget.isValue04 = selected;
              }),
          InputChip(
            label: const Text('Input'),
            selected: widget.isValue04,
            deleteIconColor: Colors.deepOrange,
            onSelected: (selected) {
              widget.isValue04 = !selected;
            },
            onDeleted: () {
              widget.isValue04 = false;
            },
          ),
        ],
      )
    ]);
  }
}

class RadioButtons extends StatefulWidget {
  RadioButtons({super.key});

  bool isValue01 = false;
  bool isValue02 = false;
  bool isValue03 = false;

  @override
  State<StatefulWidget> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  @override
  Widget build(BuildContext context) {
    return CardDecoration(title: 'Radio buttons', widgets: [

    ]);
  }

}


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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalPadding,
                    Text(widget.title,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12)),
                    verticalPadding,
                    Column(
                      children: widget.widgets,
                    ),
                    verticalPadding,
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
