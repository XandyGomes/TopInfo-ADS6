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
      // contatoMap['id'] = contato.id;
      contatoMap['name'] = contato.name;
      contatoMap['accountNumber'] = contato.accountNumber;
      return db.insert('contatos', contatoMap);
    },
  );
}

Future<List<Contato>> findAll() {
  return createDatabase().then(
    (db) {
      return db.query('contatos').then(
        (maps) {
          final List<Contato> contatos = [];
          for (Map<String, dynamic> map in maps) {
            final Contato contato = Contato(
              map['id'],
              map['name'],
              map['accountNumber'],
            );
            contatos.add(contato);
          }
          return contatos;
        },
      );
    },
  );
}
