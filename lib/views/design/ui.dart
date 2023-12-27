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
      const Actions(),
    ];

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
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

/// Actions
class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
        title: "Actions", children: <Widget>[]);
  }
}

/**
 * Cards
 */

/**
 * Dividers
 */

/**
 * Text Field ( Input )
 */

/**
 * Buttons
 */

/**
 * Radio buttons
 */

/**
 * Sliders
 */

/**
 * Switches
 */

/**
 * Progress
 */

/**
 * Checkboxes
 */

/**
 * Chips
 */

/**
 * Tab Bar
 */

/**
 * App Bar
 */

/**
 * SnackBar
 */

/**
 * Bottom sheet
 */

/**
 * Dialog
 */

/**
 * Menus ( Drop Down )
 */

/**
 * Date picker
 */

/**
 * Time picker
 */

/**
 * Navigation drawer
 */

/// Component Group Decoration
/// * TODO
/// * - FocusTraversalGroup 뭔지 알아볼 것
/// * - Theme.of(context).colorScheme, textTheme 값 변경 가능한지?
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
      elevation: 3,
      color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Column(
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              verticalPadding,
              ...children
            ],
          ),
        ),
      ),
    ));
  }
}
