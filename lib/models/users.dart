import 'package:meta/meta.dart';

@immutable
class User {
  User({
    @required this.uid,
    this.email,
    this.photoUrl,
    this.displayName,
  });

  final uid;
  final email;
  final photoUrl;
  final displayName;
  
}