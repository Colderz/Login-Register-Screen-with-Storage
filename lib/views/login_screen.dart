import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool isSubmiting = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      'assets/logo.png',
      fit: BoxFit.contain,
    );

    final emailField = TextFormField(
        enabled: isSubmiting,
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
            hintText: 'twojemail@domena.com',
            labelText: 'Email',
            hintStyle: TextStyle(color: Colors.black38)));

    final passwordField = Column(
      children: <Widget>[
        TextFormField(
            enabled: isSubmiting,
            controller: _passwordController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                hintText: 'hasło',
                labelText: 'Hasło',
                hintStyle: TextStyle(color: Colors.black38))),
        Padding(padding: EdgeInsets.all(2.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
              child: Text(
                'Zapomniałem hasła',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black),
              ),
              onPressed: () {
                // TODO: Zrobic pop-up przypominania hasła
              },
            )
          ],
        )
      ],
    );

    final fields = Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            emailField,
            passwordField,
          ],
        ));

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8)),
        Row(
          children: <Widget>[
            Text(
              'Nie jesteś użytkownikiem?',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.black87),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Zarejestruj się',
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.black54,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                logo,
                fields,
                bottom,
              ],
            ),
          )),
    );
  }
}
