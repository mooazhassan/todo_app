import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_style.dart';
import 'package:todo_app/core/utils/color_manager.dart';
import 'package:todo_app/core/utils/date_utils.dart';

class ThemeBottomSheet extends StatefulWidget {
  ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: LightAppStyle.bottomSheetTitle,
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your task',
                hintStyle: LightAppStyle.hint,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your describtion',
                hintStyle: LightAppStyle.hint,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Select Date',
              style: LightAppStyle.dateLabel,
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                showTaskDatePicker(context);
              },
              child: Text(
                selectedDate.toFormatedDate,
                style: LightAppStyle.hint,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.blue,
              ),
              onPressed: () {},
              child: Text(
                'Add Task',
                style: LightAppStyle.submitLabel,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget show() => ThemeBottomSheet();

  void showTaskDatePicker(context) async {
    selectedDate = await showDatePicker(
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(
            Duration(days: 365),
          ),
        ) ??
        selectedDate;
  }
}
