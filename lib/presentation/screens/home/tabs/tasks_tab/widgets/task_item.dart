import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/core/utils/app_style.dart';
import 'package:todo_app/core/utils/color_manager.dart';
import 'package:todo_app/core/utils/date_utils.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Slidable(
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              label: 'Delete',
              icon: Icons.delete,
              autoClose: true,
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: ColorManager.blue,
              foregroundColor: Colors.white,
              label: 'Edit',
              icon: Icons.edit,
              autoClose: true,
              borderRadius: BorderRadius.circular(10),
            )
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                height: 62,
                width: 4,
                decoration: BoxDecoration(
                  color: ColorManager.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Task Title',
                    style: LightAppStyle.taskTitle,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Task Desc',
                    style: LightAppStyle.taskDesc,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    DateTime.now().toFormatedDate,
                    style: LightAppStyle.taskDate,
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: ColorManager.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.check,
                  size: 33,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
