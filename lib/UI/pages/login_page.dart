import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mysait/UI/pages/news_page.dart';
import 'package:mysait/UI/pages/menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _codeWasSended = false;
  TextEditingController phonenumberControl = TextEditingController();
  String? errorMassage;
  String phoneNumber="";

  checknumbertelephone() {
    if (phonenumberControl.text.length < 12) {
      errorMassage = "Вы ввели слишком короткий номер телефона";
    } else if (phonenumberControl.text.length > 17) {
      errorMassage = "Вы ввели слишком длинный номер телефона";
    }
    else {
      _codeWasSended = true;
      errorMassage = null;
      phoneNumber=phonenumberControl.text;
      phonenumberControl.text="";
    }
  }

  checkcode() {
    if (phonenumberControl.text.length !=6) {
      errorMassage = "Код был отправлен вам на телефон";
    }
    else {
      _codeWasSended = true;
      errorMassage = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
      appBar: AppBar(
        title: Text("Авторизация"),
      ),
    );
  }
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextFormField(
          controller: phonenumberControl,
          decoration: InputDecoration(
            errorText: errorMassage,
            label: Text(_codeWasSended
                ? "Введите полученный код"
                : "Введите номер телефона"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if(_codeWasSended){
                checkcode();
              }else {
                checknumbertelephone();
              }
              setState(() {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
                  return menushka();
                }));
              });
            },

            child: Text(_codeWasSended ? "Войти" : "Получить смс с кодом"),),
      ],
    );
  }
}
