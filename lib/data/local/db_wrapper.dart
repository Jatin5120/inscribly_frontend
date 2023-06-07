import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inscribly/res/strings.dart';

class DBWrapper {
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox<dynamic>(
      AppStrings.dbName,
    );
  }

  final _flutterSecureStorage = const FlutterSecureStorage();

  late Box _box;

  void clearData(String key) => _box.delete(key);

  /// Delete the box
  void deleteBox() => _box.clear();

  /// Returns stored string value
  String getStringValue(String key, {String defaultValue = ''}) =>
      _box.get(key, defaultValue: defaultValue) as String;

  /// store the data
  void saveValue<T>(String key, T value) => _box.put(key, value);

  /// return bool value
  bool getBoolValue(String key, {bool defaultValue = false}) =>
      _box.get(key, defaultValue: defaultValue) as bool;

  /// return bool value
  int getIntValue(String key, {int defaultValue = 0}) =>
      _box.get(key, defaultValue: defaultValue) as int;

  /// Get data from secure storage

  Future<String> getSecuredValue(String key) async {
    try {
      var value = await _flutterSecureStorage.read(key: key) ?? '';
      return value;
    } catch (error) {
      return '';
    }
  }

  /// Save data in secure storage
  Future<void> saveValueSecurely(String key, String value) async =>
      await _flutterSecureStorage.write(key: key, value: value);

  /// Delete data from secure storage
  Future<void> deleteSecuredValue(String key) async =>
      await _flutterSecureStorage.delete(key: key);

  /// Delete all data from secure storage
  Future<void> deleteAllSecuredValues() async =>
      await _flutterSecureStorage.deleteAll();
}
