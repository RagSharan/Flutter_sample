import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Credential extends Equatable {
  final String emailId;
  final String password;

  Credential({@required this.emailId, @required this.password});

  @override
  List<Object> get props => [emailId, password];
}
