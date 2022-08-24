import 'package:flutter/material.dart';

class redaktor extends StatelessWidget {
  const redaktor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width*0.7,
        height:height,
        color: Colors.white,
        child: Row(children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 40, left: 30),
                  child: Text(
                    "Основное",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(height: 10,),
              Row(
                children: [Padding(
                    padding: EdgeInsets.only(top: 3, left: 97),
                    child: Text(
                      "Имя:",
                      style: TextStyle(fontSize: 20),
                    )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10) ),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("Женя")),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [Padding(
                    padding: EdgeInsets.only(top: 3, left: 50),
                    child: Text(
                      "Фамилия:",
                      style: TextStyle(fontSize: 20),
                    )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10) ),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("Кулаев")),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [Padding(
                    padding: EdgeInsets.only(top: 3, left: 50),
                    child: Text(
                      "Отчество:",
                      style: TextStyle(fontSize: 20),
                    )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10) ),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("Олегович")),
                ],
              ),
            ],
          ),
        ]));
  }
}
