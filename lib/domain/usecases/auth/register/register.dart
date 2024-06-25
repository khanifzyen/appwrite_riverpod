import '../../../../data/repositories/auth_repository.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../domain/entities/result.dart';
import '../../../../domain/entities/user_profile_document.dart';
import '../../../../domain/entities/user_profile_request.dart';
import '../../../../domain/usecases/auth/register/register_params.dart';
import '../../../../domain/usecases/usecase.dart';
import '../../../../core/constants.dart';

class Register implements UseCase<Result<UserProfileDocument>, RegisterParams> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  Register({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository;

  @override
  Future<Result<UserProfileDocument>> call(RegisterParams params) async {
    var resultRegister = await _authRepository.register(
      userId: 'unique()',
      email: params.email,
      password: params.password,
      name: params.name,
    );

    logger.d(resultRegister.resultValue);

    if (resultRegister.isSuccess) {
      var getSession = await _authRepository.login(
        email: params.email,
        password: params.password,
      );

      if (getSession.isSuccess) {
        var resultCreateUser = await _userRepository.createUser(
          userProfileRequest: UserProfileRequest(
            address: params.address,
            authKey: resultRegister.resultValue?.id,
            email: params.email,
            graduateYear: params.graduateYear ?? '0',
            isAlumni: params.isAlumni ?? false,
            name: params.name,
            phone: params.phone,
            photoProfileUrl: null,
          ),
        );

        logger.d(resultCreateUser.resultValue);

        if (resultCreateUser.isSuccess) {
          return Result.success(
            resultCreateUser.resultValue ?? UserProfileDocument(),
          );
        } else {
          return Result.failed(
            resultCreateUser.errorMessage ?? 'Failed register user',
          );
        }
      } else {
        return Result.failed(
          getSession.errorMessage ?? 'Failed register user',
        );
      }
    } else {
      return Result.failed(
        resultRegister.errorMessage ?? 'Failed get user data',
      );
    }
  }
}
