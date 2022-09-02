import 'package:wakke/local_storage/database.dart';

class AppService {
  final db = AppDatabase.instance;

  Future<List<Map<String, dynamic>>> getAllChallenges() async {
    List<Map<String, dynamic>> challenges = await db.queryAllRows("challenge");
    return challenges;
  }

  Future<Map<String, dynamic>> getSpecificUser(String id) async {
    List<Map<String, dynamic>> result = await db.queryAllRows("user");
    return result.firstWhere((element) => element["userId"] == id);
  }
}
