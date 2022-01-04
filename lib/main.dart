import 'dart:ui';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFeceff1), width: 2),
      borderRadius: BorderRadius.all(
        Radius.circular(36),
      ),
    );

    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xFF0079D0),
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const SizedBox(
                    width: 110,
                    height: 84,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Введите логин в виде 10 цифр номера телефона',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: borderStyle,
                      enabledBorder: borderStyle,
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: 'Телефон',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: borderStyle,
                      enabledBorder: borderStyle,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: 'Пароль',
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  SizedBox(
                    width: 154,
                    height: 42,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          )),
                      onPressed: () {},
                      child: const Text('Войти'),
                    ),
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Регистрация',
                      style: textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Забыли пароль?',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
