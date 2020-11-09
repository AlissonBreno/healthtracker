import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthtracker/home/home.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (context) => Home());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text('Não encontrado!'),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Página não encontrada ou sem permissão de acesso!',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
