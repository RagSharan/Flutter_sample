import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Credential extends Equatable {
  final String email;
  final String password;

  Credential({@required this.email, @required this.password});

  @override
  List<Object> get props => [email, password];
}
