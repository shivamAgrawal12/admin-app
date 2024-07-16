import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class AdminAppV1AuthUser {
  AdminAppV1AuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AdminAppV1AuthUser> adminAppV1AuthUserSubject =
    BehaviorSubject.seeded(AdminAppV1AuthUser(loggedIn: false));
Stream<AdminAppV1AuthUser> adminAppV1AuthUserStream() =>
    adminAppV1AuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
