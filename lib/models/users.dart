import 'package:meta/meta.dart';


@immutable
class User {
  User(this.userName, this.cohort, {
    @required this.uid,
    this.email,
    this.photoUrl,
    this.displayName
  });

  final uid;
  final email;
  final photoUrl;
  final displayName;
  final userName;
  final cohort;
 
  bool admin;
  
   

  //User(this.cohort, this.uid, this.email, this.photoUrl, this.displayName, this.userName);

  Map<String, dynamic> toJson() => {
    'cohort': cohort,
    'admin': admin,
  };
  
}