import 'package:get_storage/get_storage.dart';

class FreshPressLocalStorage {
  static final FreshPressLocalStorage _instance = FreshPressLocalStorage._internal();

  factory FreshPressLocalStorage() {
    return _instance;
  }

  FreshPressLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData<T>(String key, T value) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
