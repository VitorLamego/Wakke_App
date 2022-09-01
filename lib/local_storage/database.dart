import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/model/user.dart';

class AppDatabase {
  static const _databaseName = "challenge_wakke.db";
  static const _databaseVersion = 1;

  AppDatabase._internal();
  static final AppDatabase instance = AppDatabase._internal();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  _initDatabase() async {
    String documentsDirectory = await getDatabasesPath();
    String path = join(documentsDirectory, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(''' 
          CREATE TABLE user (
            userId VARCHAR(100) PRIMARY KEY,
            userName VARCHAR(50) NOT NULL,
            userNickname VARCHAR(50) NOT NULL,
            userImage VARCHAR(300)
          );
    ''');
    await db.execute('''
          CREATE TABLE challenge (
            id VARCHAR(100) PRIMARY KEY,
            private ENUM(0,1) NOT NULL,
            timesPlayed INTEGER NOT NULL,
            qtdComments INTEGER NOT NULL,
            scoreAvg INTEGER NOT NULL,
            correctAvg DECIMAL(5) NOT NULL,
            durationAvg DECIMAL(5) NOT NULL,
            rating DECIMAL(2) NOT NULL,
            active ENUM(0,1) NOT NULL,
            finished ENUM(0,1) NOT NULL,
            challengeId VARCHAR(50) NOT NULL,
            title VARCHAR(50) NOT NULL,
            description VARCHAR(250) NOT NULL,
            wallpaper VARCHAR(300) NOT NULL,
            video VARCHAR(300),
            nicNumber VARCHAR(50), 
            dtCreation VARCHAR(40) NOT NULL,
            canDelete ENUM(0,1) NOT NULL,
            userId VARCHAR(100) NOT NULL,

            CONSTRAINT challenge_user_FK FOREIGN KEY (userID) REFERENCES user (useriD)
          );
          ''');
    await populateDB();
  }

  Future populateDB() async {
    String jsonText = await rootBundle.loadString('assets/json_wakkefun.json');
    List<dynamic> jsonData = json.decode(jsonText);
    List<String> usersCreated = [];

    jsonData.forEach(
      (element) async {
        User user = User(
            element["usuario_autor"],
            element["usuario_autor_nome"],
            element["usuario_autor_apelido"],
            element["usuario_autor_imagem_perfil"]);

        if (!usersCreated.contains(element["usuario_autor"])) {
          usersCreated.add(element["usuario_autor"]);
          await insert("user", user.toMap());
        }
        Challenge challenge = Challenge(
            element["_id"],
            element["privado"],
            element["partidas_executadas_qtd"],
            element["comentarios_qtd"],
            element["media_nota"],
            element["media_acertos"].toDouble(),
            element["media_duracao"].toDouble(),
            element["avaliacao_nota"].toDouble(),
            element["status_ativo"],
            element["finalizado"],
            element["desafio_id"],
            element["titulo"],
            element["descricao"],
            element["imagem_capa"],
            element["link_video"],
            element["numero_nic"],
            element["data_criacao"],
            element["pode_ser_excluido"],
            user);
        await insert("challenge", challenge.toMap());
      },
    );
  }

  // Helper methods
  Future<int> insert(String table, Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows(String table) async {
    Database db = await instance.database;
    return await db.query(table);
  }

  Future<int> update(
      String table, String primaryKeyColumn, Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[primaryKeyColumn];
    return await db
        .update(table, row, where: '$primaryKeyColumn = ?', whereArgs: [id]);
  }

  Future<int> delete(String table, String primaryKeyColumn, int id) async {
    Database db = await instance.database;
    return await db
        .delete(table, where: '$primaryKeyColumn = ?', whereArgs: [id]);
  }
}
