import 'package:flutter/material.dart';
import 'package:mysait/UI/wigets/profilredaktor_wiget.dart';

class profilwiget extends StatelessWidget {
  const profilwiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      color: Colors.white,
      width: width * 0.8,
      child: Row(
        children: [
          Column(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(top: 40, left: 50),
                child: Text(
                  "Профиль",
                  style: TextStyle(fontSize: 30),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                  alignment: Alignment.center,
                  height: 160,
                  width: 145,
                  // Задаём внутренние отступы

                  // Указываем декорации блока
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое

                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Image.network("https://sun9-17.userapi.com/impg/XxKz_qsEt6feOKLMucEbtmIFL64-tCU5h_WQyw/VViukUpqFsE.jpg?size=146x146&quality=96&sign=e09ed1ee4f5f21032c576d2c32d005ad&type=album")),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 145,
                  // Задаём внутренние отступы
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  // Указываем декорации блока
                  decoration: BoxDecoration(
                      color: Colors.green,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("Подтвержден")),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              alignment: Alignment.center,
              child: RaisedButton.icon(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return profilredwiget();
                    }));
              },
                  color: Colors.grey,
                  icon: Icon(Icons.mode_edit, size: 30,),
                  label: Text("Редактировать")
              ),
            ),
          ]),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 60)),
              Text(
                "Информация",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: width * 0.5,
              ),
              SizedBox(
                height: 10,
              ),
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
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("ФИО:  Кулаев Евгений Олегович")),
              SizedBox(
                height: 10,
              ),
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
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("Дата рождения: 25.12.2002")),
              SizedBox(
                height: 10,
              ),
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
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("Почта: 000")),
              SizedBox(
                height: 100,
              ),
              Padding(padding: EdgeInsets.only(top: 60)),
              Text(
                "Достижения",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: width * 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network(
                      "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-87.userapi.com/impg/XMxxVoo6mGCvkwJaMdhwqf69Em-aRiwJIyEXbA/zM5PBIRB6nY.jpg?size=274x399&quality=96&sign=801dc0d39f9827a708f983f3ab279281&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: Image.network(
                      "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    child: Image.network(
                      "https://sun9-87.userapi.com/impg/XMxxVoo6mGCvkwJaMdhwqf69Em-aRiwJIyEXbA/zM5PBIRB6nY.jpg?size=274x399&quality=96&sign=801dc0d39f9827a708f983f3ab279281&type=album",
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
