import 'package:flutter/material.dart';
import 'package:local_storage_first_step/theme/routes.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _repasswordController;
  bool isSubmiting = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      'assets/logo.png',
      fit: BoxFit.contain,
    );

    final usernameField = TextFormField(
        controller: _usernameController,
        style: TextStyle(
          color: Colors.black87,
        ),
        cursorColor: Colors.black87,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)),
            hintText: 'Twój nick',
            labelText: 'Nick',
            labelStyle: TextStyle(color: Colors.black87),
            hintStyle: TextStyle(color: Colors.black38)));

    final emailField = TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black87,
        ),
        cursorColor: Colors.black87,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)),
            hintText: 'twojemail@domena.com',
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.black87),
            hintStyle: TextStyle(color: Colors.black38)));

    final passwordField = TextFormField(
        controller: _passwordController,
        style: TextStyle(
          color: Colors.black87,
        ),
        cursorColor: Colors.black87,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)),
            hintText: 'Hasło',
            labelText: 'Hasło',
            labelStyle: TextStyle(color: Colors.black87),
            hintStyle: TextStyle(color: Colors.black38)));

    final repasswordField = TextFormField(
        controller: _repasswordController,
        style: TextStyle(
          color: Colors.black87,
        ),
        cursorColor: Colors.black87,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black87)),
            hintText: 'Hasło',
            labelText: 'Powtórz hasło',
            labelStyle: TextStyle(color: Colors.black87),
            hintStyle: TextStyle(color: Colors.black38)));

    final fields = Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            usernameField,
            emailField,
            passwordField,
            repasswordField,
          ],
        ));

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      child: MaterialButton(
        onPressed: () {
          // TODO: Autoryzacja
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

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(padding: EdgeInsets.all(8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Jesteś już użytkownikiem?',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.black87),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authLogin);
              },
              child: Text(
                'Zaloguj się',
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
            child: Container(
              height: mq.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  logo,
                  fields,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: bottom,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
