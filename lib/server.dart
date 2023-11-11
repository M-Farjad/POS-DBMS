// import 'dart:io';
// import 'package:dart_mssql/dart_mssql.dart';

// void main() async {
//   SqlConnection connection = SqlConnection(
//       host: "JESTER/SQLEXPRESS",
//       db: "chit_chat",
//       user: "JESTER/fwfar",
//       password: "PASSWORD");
//   String cmd = "select email from Users where email='Haseeb@example.com'";

//   SqlResult result = connection.execute(cmd, [4]);
//   result.rows.forEach((e) {
//     print("${e.email}");
//   });
//   print("end of printing.");
//   connection.close();
//   stdin.readLineSync();
// }
// // Server type: Database Engine
// // Server name: JESTER\SQLEXPRESS
// // Authentication: Windows Authentication 
// // User name: JESTER\fwfar

