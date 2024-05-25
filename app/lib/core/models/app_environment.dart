import 'package:envied/envied.dart';

part 'app_environment.g.dart';

@envied
abstract class AppEnvironment {
  @EnviedField(varName: 'BASE_URL')
  static const String baseUrl = _AppEnvironment.baseUrl;

  @EnviedField(varName: 'AUTH0_AUDIENCE')
  static const String auth0Audience = _AppEnvironment.auth0Audience;

  @EnviedField(varName: 'AUTH0_ISSUER')
  static const String auth0Issuer = _AppEnvironment.auth0Issuer;

  @EnviedField(varName: 'AUTH0_DOMAIN')
  static const String auth0Domain = _AppEnvironment.auth0Domain;

  @EnviedField(varName: 'AUTH0_CLIENTID')
  static const String auth0ClientId = _AppEnvironment.auth0ClientId;
}
