import 'package:flutter/material.dart';
import 'package:crime/config/routes.dart';
import 'package:crime/presentation/HomePage.dart';
import 'package:crime/presentation/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: 'FCMinimal'),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _registerRouteWithParameters,
    );
  }
}

Route _registerRouteWithParameters(RouteSettings settings) {
  // Pocket pocket = settings.arguments;
  if (settings.name == AppRoutes.firstPage) {
    print('Hello, Mr.Suphasit');
    return MaterialPageRoute(builder: (context) {
      return HomePage(
        title: 'Crime Detector App',
      );
    });
  }
  return null;
}
