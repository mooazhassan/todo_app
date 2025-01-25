import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_style.dart';
import 'package:todo_app/core/utils/color_manager.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
            Text(
              '15 / 12 / 2024',
              style: LightAppStyle.hint,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              style: ButtonStyle(

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
}
