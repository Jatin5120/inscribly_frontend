import 'package:objectbox/objectbox.dart';

@Entity()
class PendingFolderModel {
  PendingFolderModel({
    this.id = 0,
    required this.folderName,
    required this.diaries,
  });

  int id;
  String folderName;
  List<String> diaries;
}
