import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_style.dart';
import 'package:todo_app/core/utils/color_manager.dart';

typedef onChanged = void Function(String?);

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String selectedTheme = 'Light';
  String selectedLang = 'English';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: LightAppStyle.settingsLabel,
          ),
          SizedBox(
            height: 4,
          ),
          buildDropDawn(
            MenuItem(
              item1: 'Light',
              item2: 'Dark',
              textView: selectedTheme,
              onchanged: (item) {
                selectedTheme = item ?? selectedTheme;
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Language',
            style: LightAppStyle.settingsLabel,
          ),
          SizedBox(
            height: 4,
          ),
          buildDropDawn(
            MenuItem(
                item1: 'English',
                item2: 'العربيه',
                textView: selectedLang,
                onchanged: (item) {
                  selectedLang = item ?? selectedLang;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }

  Widget buildDropDawn(MenuItem menuItem) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        border: Border.all(width: 1, color: ColorManager.blue),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              menuItem.textView,
              style: LightAppStyle.selectedSettingLabel,
            ),
            DropdownButton<String>(
              underline: SizedBox(),
              borderRadius: BorderRadius.circular(12),
              items: <String>[menuItem.item1, menuItem.item2]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
              // Step 5.
              onChanged: menuItem.onchanged,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String item1, item2, textView;
  onChanged onchanged;

  MenuItem(
      {required this.item1,
      required this.item2,
      required this.textView,
      required this.onchanged});
}
