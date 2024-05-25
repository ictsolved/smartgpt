import 'package:isar/isar.dart';
part 'user_onboarding.g.dart';

@collection
class UserOnBoarding {
  const UserOnBoarding({this.onboarded = true});
  final bool onboarded;
  Id get id => 1;
}
