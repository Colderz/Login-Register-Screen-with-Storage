import 'package:flutter/material.dart';
import 'package:local_storage_first_step/theme/routes.dart';

class OpeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      'assets/logo.png',
      fit: BoxFit.contain,
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.authLogin);
        },
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Zaloguj',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.authRegister);
        },
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Zarejestruj',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final buttons = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(padding: EdgeInsets.all(12)),
        registerButton,
      ],
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: mq.size.height * 0.02,
              ),
              logo,
              buttons,
            ],
          ),
        ));
  }
}
