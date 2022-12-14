import 'package:flutter/material.dart';
/*
import 'package:flutter_personal_tracker/helpers/task_db.dart';
import 'package:flutter_personal_tracker/model/task_tracker.dart';
import 'package:flutter_personal_tracker/screens/task_screen.dart';
import '../constant.dart';
*/
import 'package:flutter_auth/habitTracker/helpers/task_db.dart';
import 'package:flutter_auth/habitTracker/model/task_tracker.dart';
import 'package:flutter_auth/habitTracker/screens/task_screen.dart';
import 'package:flutter_auth/constants.dart';

class TaskCard extends StatelessWidget {
  @override
  TaskCard(
      { int taskId,
       String cardTitle,
       String emojiIcon,
       DateTime selectedDate,
      onTap}) {
    this.taskId = taskId;
    this.cardTitle = cardTitle;
    this.emojiIcon = emojiIcon;
    this.selectedDate = selectedDate;
    this.onTap = onTap;
  }

   int taskId;
   String cardTitle;
   String emojiIcon;
   bool disableClick;
   DateTime selectedDate;
   void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    TaskTracker taskTracker =
        taskTrackerBox.get(taskId, defaultValue: TaskTracker(trackedDates: []));
    bool isCompleted = taskTracker.checkIsDoneWhereDate(selectedDate);

    return GestureDetector(
        onTap: () {
          onTap(taskId);
        },
        child: RawTaskCard(
          cardTitle: cardTitle,
          emojiIcon: emojiIcon,
          isCompleted: isCompleted,
        ));
  }
}

class RawTaskCard extends StatelessWidget {
  RawTaskCard({
     String cardTitle,
     String emojiIcon,
    bool isCompleted = false,
  }) {
    this.isCompleted = isCompleted;
    this.cardTitle = cardTitle;
    this.emojiIcon = emojiIcon;
  }

   String cardTitle;
   String emojiIcon;
   bool isCompleted;

  List<Color> getGradientColor(bool isCompleted) {
    if (isCompleted) {
      return [Color(0xee3E9450), Color(0x555EE07A)];
    } else {
      return [Color(0xaa904E95), Color(0x30904E95)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: getGradientColor(isCompleted),
          )),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.black54,
              shape: BoxShape.circle,
            ),
            child: Text(
              emojiIcon,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Expanded(child: Text(cardTitle, style: kText)),
          Container(
            child: isCompleted
                ? Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                : Container(),
          )
        ],
      ),
    );
  }
}
