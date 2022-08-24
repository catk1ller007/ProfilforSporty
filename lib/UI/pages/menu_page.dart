
import 'package:flutter/material.dart';
import 'package:mysait/UI/pages/dostijenya_page.dart';
import 'package:mysait/UI/pages/friend_page.dart';
import 'package:mysait/UI/pages/news_page.dart';
import 'package:mysait/UI/pages/profil_page.dart';
import 'package:mysait/UI/pages/stats_page.dart';

class menushka extends StatelessWidget {
  const menushka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Главное меню'),
      ),
      body: Row(
        children: [
          Container(
            width: width * 0.2,
            color: Colors.green,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return newsscrn();
                          }));
                    },
                    child: Text('Новости', style: TextStyle(fontSize: 15))),
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return profilscreen();
                          }));
                    },
                    child: Text('Профиль', style: TextStyle(fontSize: 15))),
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return dosscr();
                          }));
                    },
                    child: Text('Достижения', style: TextStyle(fontSize: 15))),
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return statsscr();
                          }));
                    },
                    child: Text('Статистика', style: TextStyle(fontSize: 15))),
                SizedBox(
                  height: 10,
                  width: 20,
                ),
                RaisedButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return friendscr();
                          }));
                    },
                    child: Text('Друзья', style: TextStyle(fontSize: 15))),
              ],
            ),
          ),
        ], //children
      ),
    );
  }
}