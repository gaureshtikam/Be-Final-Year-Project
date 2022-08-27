import 'package:hive/hive.dart';

part 'task_entry.g.dart';

@HiveType(typeId: 0)
class TaskEntry {
  TaskEntry({
     this.taskName,
     this.taskIcon,
    this.taskStartDate,
  });

  TaskEntry.newTask({
    this.taskName,
    this.taskIcon,
  }) : taskStartDate = DateTime.now();

  @HiveField(0)
   String taskName;
  @HiveField(1)
   String taskIcon;
  @HiveField(2)
  DateTime taskStartDate = DateTime.now();
}
