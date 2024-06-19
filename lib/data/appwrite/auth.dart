import 'package:appwrite/appwrite.dart';
import '/data/repositories/auth_repository.dart';
import '/domain/entities/result.dart';
import '/domain/entities/session.dart';
import '/domain/entities/user.dart';
import '/core/constants.dart';
import '/data/helpers/network_client_helper.dart';

class AppwriteAuthRepository implements AuthRepository {
  final Client _appwriteClient;

  AppwriteAuthRepository({Client? appwriteClient})
      : _appwriteClient =
            appwriteClient ?? NetworkClientHelper.instance.appwriteClient;

  late final Account _account = Account(_appwriteClient);

  @override
  Future<Result<Session>> login({
    required String email,
    required String password,
  }) async {
    try {
      var result = await _account.createEmailPasswordSession(
        email: email,
        password: password,
      );

      logger.d(result);

      return Result.success(
        Session.fromJson(result.toMap()),
      );
    } on AppwriteException catch (e) {
      logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      var result = await _account.deleteSession(sessionId: 'current');

      logger.d(result);

      return Result.success(result);
    } on AppwriteException catch (e) {
      logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<Result<User>> register({
    required String userId,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var result = await _account.create(
        userId: 'unique()',
        email: email,
        password: password,
        name: name,
      );

      logger.d(result.toMap());

      return Result.success(
        User.fromJson(result.toMap()),
      );
    } on AppwriteException catch (e) {
      logger.e(e);
      return Result.failed(e.message ?? 'Error!');
    }
  }

  @override
  Future<String?> getLoggedInUserId() async {
    try {
      var uid = await _account.get();

      return uid.$id;
    } on AppwriteException catch (e) {
      logger.e(e);
      if (e.code != 401 || e.type != 'general_unauthorized_scope') rethrow;
    }

    return null;
  }
}
