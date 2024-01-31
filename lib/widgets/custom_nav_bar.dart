import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portofolio/utils/constants.dart';
import 'package:personal_portofolio/utils/utils.dart';
import 'package:personal_portofolio/widgets/rounded_field.dart';

class CustomNavBar extends StatefulWidget {
  final List<String> menuList;
  final ValueChanged<int>? onMenuChange;

  const CustomNavBar({
    super.key,
    required this.menuList,
    this.onMenuChange
  });

  @override
  State<StatefulWidget> createState() => CustomNavBarState();
}

class CustomNavBarState extends State<CustomNavBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(55),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.menuList.asMap().entries.map((entry) {
                String menuText = entry.value;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = entry.key;
                      });
                      widget.onMenuChange?.call(selectedIndex);
                      Utils.getLogger().d(selectedIndex);
                    },
                    child: Center(
                      child: RoundedField(
                        text: menuText,
                        backgroundColor: tertiaryPurple,
                        borderRadius: 50,
                        paddingVertical: 7,
                        paddingHorizontal: 15,
                        fontSize: 16,
                        isEnabled: selectedIndex == entry.key,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}