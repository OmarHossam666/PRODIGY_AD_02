import 'package:prodigy_ad_02/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:prodigy_ad_02/views/tasks/widgets/task_view.dart';

class TaskViewButton extends StatelessWidget {
  const TaskViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TaskView(
                      titleTaskController: null,
                      descriptionTaskController: null,
                      task: null,
                    )));
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 20,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
