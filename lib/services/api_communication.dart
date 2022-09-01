import 'package:wakke/local_storage/database.dart';

class AppService {
  final db = AppDatabase.instance;

  Future<List<Map<String, dynamic>>> getAllChallenges() async {
    return await db.queryAllRows("challenge");
  }

  Future<Map<String, dynamic>> getSpecificUser(String id) async {
    List<Map<String, dynamic>> result = await db.queryAllRows("user");
    return result.firstWhere((element) => element["userId"] == id);
  }
}
