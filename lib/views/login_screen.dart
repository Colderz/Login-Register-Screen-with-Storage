import 'package:flutter/material.dart';
import 'package:local_storage_first_step/theme/routes.dart';

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

    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
                child: Container(
              height: mq.size.height / 4,
              width: mq.size.width / 1.2,
              color: Colors.white,
              child: Center(child: Text('Test Dialog')),
            ));
          });
    }

    final logo = Image.asset(
      'assets/logo.png',
      fit: BoxFit.contain,
    );

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

    final passwordField = Column(
      children: <Widget>[
        TextFormField(
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
                showAlertDialog(context);
              },
            )
          ],
        )
      ],
    );

    final fields = Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            emailField,
            passwordField,
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
          'Zaloguj',
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
              'Nie jesteś użytkownikiem?',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.black87),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.authRegister);
              },
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
