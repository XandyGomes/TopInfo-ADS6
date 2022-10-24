import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase() {
  getDatabasesPath().then(
    (dbPath) {
      final String path = join(dbPath, 'banco.db');
      openDatabase(path, onCreate: ((db, version) {
        db.execute('CREATE TABLE contatos('
            'id INTEGER PRIMARY KEY, '
            'name TEXT, '
            'accountNumber INTEGER)');
      }), version: 1);
    },
  );
}
