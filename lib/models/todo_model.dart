import 'package:hive/hive.dart';


@HiveType(typeId: 0)

class TodoModel extends HiveObject{

  @ HiveField(0)
  late String title;
}