import 'package:stageup/core/helpers/shared_prefs_helper.dart';

Future<void> checkIfTokenIsValid() async {
  var token = await LocalStorageHelper.getStringData("token");
}
