import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const SizedBox(
                width: 110,
                height: 84,
                child: Placeholder(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Введите логин в виде 10 цифр номера телефона'),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 244,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 244,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Войти'),
                ),
              ),
              const SizedBox(
                height: 62,
              ),
              InkWell(
                onTap: () {},
                child: const Text('Регистрация'),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: const Text('Забыли пароль?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
