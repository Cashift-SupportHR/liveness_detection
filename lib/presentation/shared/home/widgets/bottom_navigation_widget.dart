import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';

class BottomNavigationWidget extends StatefulWidget {
  final List<BottomNavigationWidgetModel> items;

  const BottomNavigationWidget({Key? key, required this.items})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigationWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kWhiteFA,
      drawerScrimColor: kPrimaryDark.withOpacity(0.7),
      body: SafeArea(
        child: Center(
          child: widget.items.elementAt(_selectedIndex).widget,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // This is all you need!
        backgroundColor: Colors.white,
        unselectedItemColor: kSteal,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(
          color: kPrimaryDark,
        ),
        selectedLabelStyle:
            kTextMedium.copyWith(color: kPrimaryDark, fontSize: 11),
        unselectedLabelStyle:
            kTextRegular.copyWith(color: kSteal, fontSize: 11),
        items: widget.items
            .map((e) => e.builder(_selectedIndex == widget.items.indexOf(e)))
            .toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryDark,
        onTap: _onItemTapped,
      ),
    );
  }
}

class BottomNavigationWidgetModel {
  final Widget widget;
  final String label;
  final String? iconPath;
  final Widget? icon;

  BottomNavigationWidgetModel(
      {required this.widget, required this.label, this.iconPath, this.icon})
      : assert(icon == null || iconPath == null,
            'Cannot provide both a icon and a icon');

  BottomNavigationItemBuilder builder(bool selected) {
    return BottomNavigationItemBuilder(this, selected);
  }
}

class BottomNavigationItemBuilder extends BottomNavigationBarItem {
  BottomNavigationItemBuilder(BottomNavigationWidgetModel model,
      [bool? selected])
      : super(
            icon: Column(
              children: [
                model.icon != null
                    ? model.icon!
                    : model.iconPath!.endsWith('svg') == true
                        ? SvgPicture.asset(
                            model.iconPath!,
                            height: 24,
                            color: selected == true ? kPrimary : kSteal,
                          )
                        : Image.asset(model.iconPath!),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
            label: model.label);
}
