import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysait/UI/pages/login_page.dart';

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
        primarySwatch: Colors.green,
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    width = width * 0.5;
    //print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text("Главная страница", style: TextStyle(fontSize: 17)),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.grey,
            padding: EdgeInsets.only(left: 100,bottom: 0,top: 100,right: 117),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                  "Для того, чтобы зайти на наш сайт необходимо зарегистрироваться!",
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(height: 100,),
                RaisedButton(
                    padding: EdgeInsets.only(left: 30,bottom: 30,top: 30,right: 30),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return LoginPage();
                      }));
                    },
                    child: Text('Зарегистрироваться!',
                        style: TextStyle(fontSize: 30))),
                SizedBox(height: 100,),
               Card(
                 child:  Image.network("https://www.meme-arsenal.com/memes/2703da73c6f28cf29cff1f8b7ca36cdb.jpg",width: 300,),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}