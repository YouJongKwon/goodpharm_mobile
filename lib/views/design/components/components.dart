import 'package:goodpharm_mobile/views/design/typography.dart';
import 'package:goodpharm_mobile/views/design/ui.dart';

import '../../../utils/module/module.dart';
import 'actions.dart';

class Components extends StatefulWidget {
  const Components({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<StatefulWidget> createState() => _ComponentsState();
}

class _ComponentsState extends State<Components>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  var pageIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 5,
        vsync: this,
        initialIndex: 0,
        animationDuration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return ActionLayer();
      case 1:
        return DesignSystemTypography();
      case 2:
        return ActionLayer();
      case 3:
        return ActionLayer();
      case 4:
        return ActionLayer();
      default:
        return ActionLayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: pages.length,
        child: Container(
          child: Column(
            children: [
              TabBar(tabs: tabItems, controller: tabController),
              Expanded(child: TabBarView(controller: tabController, children: pages,))
            ],
          ),
        ));
  }
}

const List<Widget> pages = [
  ActionLayer(),
  DesignSystemTypography(),
  ActionLayer(),
  ActionLayer(),
  ActionLayer(),
];

const List<Tab> tabItems = [
  Tab(
    icon: Icon(Icons.widgets_outlined),
    text: 'Actions',
  ),
  Tab(
    icon: Icon(Icons.input),
    text: 'Inputs',
  ),
  Tab(
    icon: Icon(Icons.display_settings),
    text: 'Display',
  ),
  Tab(
    icon: Icon(Icons.format_shapes),
    text: 'Shape',
  ),
  Tab(
    icon: Icon(Icons.badge),
    text: 'Communications',
  ),
];
