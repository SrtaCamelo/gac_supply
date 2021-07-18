import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast/sembast_memory.dart';

class Store {
  static Database _db;

  static init() async {
    if(_db != null) return;
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);

    var dbPath = '${dir.path}/storage.db';

    _db = await databaseFactoryIo.openDatabase(dbPath);
  }

  static initInMemory() async {
    final factory = newDatabaseFactoryMemory();
    _db = await factory.openDatabase('storage.db');
  }

  static Future<void> put(String key, dynamic value) async {
    await init();
    final store = StoreRef.main();
    await store.record(key).put(_db, value);
  }

  static Future<T> get<T>(String key) async {
    await init();
    final store = StoreRef.main();
    return await store.record(key).get(_db) as T;
  }

  static Future<void> delete(String key) async {
    await init();
    final store = StoreRef.main();
    await store.record(key).delete(_db);
  }

  static Future<void> clear() async {
    await init();
    final store = StoreRef.main();
    await store.delete(_db);
  }

  static Future<bool> contains(String key) async {
    await init();
    final store = StoreRef.main();
    return store.record(key).exists(_db);
  }

  static close() async {
    await _db?.close();
  }
}