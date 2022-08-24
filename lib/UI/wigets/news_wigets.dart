
import 'package:flutter/material.dart';

class novosty extends StatelessWidget{
  const novosty({Key? key}) : super(key: key);
 final String fuck="Гениальное фото было сделано Нижегородским студентом";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width*0.785,
      height: height,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Column(
         children: [Text(fuck,style: TextStyle(fontSize: 30)),
           Expanded(child: Container(
             child: Expanded(
               child: Image.network("https://img3.akspic.ru/attachments/originals/2/5/8/1/21852-plyazh-s_vysoty_ptichego_poleta-majamibich-gorod-noch-2000x1333.jpg",width: width*0.5,
                 height: height*0.3,
                ),
             ),
             ),
           ),
           Container(
             child:   Text("На фотографии запечатлен город Нижний Новгород ночью, это очень красивое фото, дорогие друзья",style: TextStyle(fontSize: 20),),
           ),
        ],
        ),
      ],

      ),
    );
  }
}