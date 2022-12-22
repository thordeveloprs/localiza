import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CacaoShowFirebaseUser {
  CacaoShowFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CacaoShowFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CacaoShowFirebaseUser> cacaoShowFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CacaoShowFirebaseUser>(
      (user) {
        currentUser = CacaoShowFirebaseUser(user);
        return currentUser!;
      },
    );
