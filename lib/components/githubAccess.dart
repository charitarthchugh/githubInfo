
import 'package:github/github.dart';

Future<void> main() async {
  /* Create a GitHub Client, with anonymous authentication by default */
  final github = GitHub();
  final User cc =await github.users.getUser("charitarthchugh");
  /* Do Something with repo */
}