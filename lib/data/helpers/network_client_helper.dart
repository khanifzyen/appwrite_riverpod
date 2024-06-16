import 'package:appwrite/appwrite.dart';

class NetWorkClientHelpers {
    // APPWRITE CLIENT HELPER
  static final Client _appwriteClient = Client()
      .setEndpoint(dotenv.env['BASE_URL'].toString())
      .setProject(dotenv.env['PROJECT_ID'].toString());

  NetworkClientHelper._();

  static final instance = NetworkClientHelper._();
}
