import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QuizApp2FirebaseUser {
  QuizApp2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

QuizApp2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuizApp2FirebaseUser> quizApp2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<QuizApp2FirebaseUser>(
      (user) {
        currentUser = QuizApp2FirebaseUser(user);
        return currentUser!;
      },
    );
