import 'package:flutter/material.dart';
import 'package:mysait/UI/pages/friend_page.dart';
import 'package:mysait/UI/pages/profil_page.dart';
import 'package:mysait/UI/pages/stats_page.dart';

import 'news_page.dart';

class dosscr extends StatelessWidget {
  const dosscr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Достижения'),
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
                    onPressed: null,
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

/*
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Мой первый сайт',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Sporty'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends  State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(title: Text('Sporty'),),
      body: Row(
        children: [
          Container(width: width*0.2, color: Colors.grey,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Новости"),

                ),
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Статистика"),

                ),

                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Достижения"),

                ),
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Профиль"),
                ),

                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Друзья"),
                ),
              ],
            ),
          ),
        ], //children
      ),
    );
  }
}

SizedBox(height: 10, width: 20,),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.0),
                        child: Icon(Icons.show_chart),
                      ),
                    ),
                    TextSpan(text: 'Статистика'),
                  ],
                ),
              ),


SizedBox(height: 10,width: 20,),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.0),
                        child: Icon(Icons.account_circle),
                      ),
                    ),
                    TextSpan(text: 'Профиль'),
                  ],
                ),
              ),





class profilscreen extends StatelessWidget{
  const profilscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(title: Text('Sporty'),),
      body: Row(
        children: [Expanded(
//         padding: const EdgeInsets.fromLTRB(40.0,20.0,40.0,20.0),
          // margin: const EdgeInsets.fromLTRB(10, 10, 300, 300),
          child: new TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(6.0)),
                    borderSide:
                    BorderSide(width: 2, color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(6.0)),
                    borderSide:
                    BorderSide(width: 2, color: Colors.black)),
                hintText: 'введите данные'),
            style: new TextStyle(
                fontSize: 20.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          ),
        ),
          Container(width: width*0.2, color: Colors.grey,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Новости"),

                ),
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Статистика"),

                ),

                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Достижения"),

                ),
                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Профиль"),
                ),

                SizedBox(height: 10,width: 20,),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Друзья"),
                ),
              ],
            ),
          ),
        ], //children
      ),
    );
  }
}
*/
