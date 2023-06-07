import 'dart:io';

import 'package:inscribly/data/local/objectbox.g.dart';
import 'package:inscribly/models/models.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';
import 'package:path_provider/path_provider.dart';

// flutter pub run build_runner build
class AppObjectBox {
  AppObjectBox._create(Store store) {
    pendingFolderBox = Box<PendingFolderModel>(store);
  }

  late final Box<PendingFolderModel> pendingFolderBox;

  static late final String _dbPath;

  static Future<AppObjectBox> _openStore() async {
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart.
    final store = await openStore(directory: _dbPath);
    AppLog.success('[CREATED] - Objectbox databse at $_dbPath');
    return AppObjectBox._create(store);
  }

  /// Create an instance of ObjectBox to use throughout the presenter.
  static Future<AppObjectBox> create([String? databaseName]) async {
    try {
      var dbName = databaseName ?? AppStrings.dbName;
      var docDir = await getApplicationDocumentsDirectory();
      _dbPath = '${docDir.path}/$dbName';
      return await _openStore();
    } on ObjectBoxException catch (e) {
      AppLog.error('[ERROR] - ObjectBox create : $e');
      var directory = Directory(_dbPath);
      await directory.delete(recursive: true);
      AppLog.info('[DELETED] - Database');
      return await _openStore();
    }
  }
}
