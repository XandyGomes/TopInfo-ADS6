import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/contato.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then(
    (dbPath) {
      final String path = join(dbPath, 'banco.db');
      return openDatabase(path, onCreate: ((db, version) {
        db.execute('CREATE TABLE contatos('
            'id INTEGER PRIMARY KEY, '
            'name TEXT, '
            'accountNumber INTEGER)');
      }), version: 1);
    },
  );
}

Future<int> save(Contato contato) {
  return createDatabase().then(
    (db) {
      final Map<String, dynamic> contatoMap = Map();
      contatoMap['id'] = contato.id;
      contatoMap['name'] = contato.name;
      contatoMap['accountNumber'] = contato.accountNumber;
      return db.insert('contatos', contatoMap);
    },
  );
}
