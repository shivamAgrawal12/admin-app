import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class TrayApkGsgv1AuthUser {
  TrayApkGsgv1AuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TrayApkGsgv1AuthUser> trayApkGsgv1AuthUserSubject =
    BehaviorSubject.seeded(TrayApkGsgv1AuthUser(loggedIn: false));
Stream<TrayApkGsgv1AuthUser> trayApkGsgv1AuthUserStream() =>
    trayApkGsgv1AuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
