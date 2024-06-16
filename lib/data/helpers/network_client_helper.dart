import 'package:appwrite/appwrite.dart';
import '../../core/constants.dart';

class NetworkClientHelper {
  // APPWRITE CLIENT HELPER
  static final Client _appwriteClient =
      Client().setEndpoint(appwriteEndpoint).setProject(projectId);

  NetworkClientHelper._();

  static final instance = NetworkClientHelper._();

  Client get appwriteClient => _appwriteClient;

  //how to use: NetworkClientHelper.instance.appwriteClient();
}
