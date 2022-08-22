import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:flutter/material.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';

int vp=0;

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
        body:  Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(61, 90, 128, 1),
                    Color.fromRGBO(21, 1, 38, 1.0),
                    Color.fromRGBO(41, 50, 65, 1),
                    Color.fromRGBO(21, 1, 38, 1.0),
                  ],
                )),

            child: Container(
                color: Colors.black45,
                child:
                Column(
                    children: [
                      MediaQuery.of(context).size.width>1000?Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.2,
                              height: 70,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/logo.png"),
                                    fit: BoxFit.fitWidth),
                              ),),

                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                  Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      color: Colors.transparent,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/');
                                      }, child:
                                      (

                                          Text('Главная',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),)
                                      ))),
                                  Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: MediaQuery.of(context).size.width>=1000?70:MediaQuery.of(context).size.width>=700?60:30,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/2');
                                      }, child:
                                      (
                                          Text('Партнёрам',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/6');
                                      }, child:
                                      (
                                          Text('Контакты',style: TextStyle(
                                            //+(typeforcourse1).toString()+' '+(typeforcourse2).toString()
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/1');
                                      }, child:
                                      (
                                          Text('Тарифы',style: TextStyle(
                                            color: Color.fromRGBO(246, 201, 67, 1.0),
                                            fontSize: 14,

                                          ),)
                                      ))),

                                  Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/3');

                                      }, child:
                                      (
                                          Text('Резервы',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))),
                                ],
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width*0.2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  route=='/'?Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,

                                      child: TextButton(onPressed: ()async{
                                        Navigator.pushNamed(context, '/4');
                                      }, child:
                                      (
                                          Text('Вход',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))):Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        showDialog(context: context, builder: (BuildContext context){
                                          return AlertDialog(
                                            actionsPadding: EdgeInsets.all(0),
                                            // title: Text('Add name/important/deadline'),
                                            content:
                                            Container(
                                                height: 200,
                                                width: 200,
                                                color: Colors.white70,
                                                child:
                                                Column(
                                                  children: [
                                                    Text('Хотите выйти?')
                                                  ],
                                                )),
                                            actions: [
                                              TextButton(onPressed: (){
                                                route='/';
                                                Navigator.pushNamed(context, '/');
                                              }, child: Text('Да', style: TextStyle(
                                                  color: Colors.black
                                              ),))
                                            ],
                                          );
                                        });
                                      }, child:
                                      (
                                          Text('Выход',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))),

                                  route=='/'?Container(
                                      width: MediaQuery.of(context).size.width*0.1,
                                      height: 70,
                                      child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context, '/5');
                                      }, child:
                                      (
                                          Text('Регистрация',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,

                                          ),)
                                      ))):Container(),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ):
      Container(
          margin: EdgeInsets.fromLTRB(0,40,0,0),

          width: MediaQuery.of(context).size.width,
          child: TextButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                backgroundColor: Colors.white54,
                actionsPadding: EdgeInsets.all(0),
                content:
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        height: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.cover),
                        ),),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          color: Colors.transparent,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/');
                          }, child:
                          (
                              Text('Главная',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),)
                          ))),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width>=1000?70:MediaQuery.of(context).size.width>=700?60:30,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/2');
                          }, child:
                          (
                              Text('Партнёрам',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),)
                          ))),

                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/6');
                          }, child:
                          (
                              Text('Контакты',style: TextStyle(
                                //+(typeforcourse1).toString()+' '+(typeforcourse2).toString()
                                color: Colors.white,
                                fontSize: 14,
                              ),)
                          ))),

                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/1');
                          }, child:
                          (
                              Text('Тарифы',style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,


                              ),)
                          ))),

                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/3');

                          }, child:
                          (
                              Text('Резервы',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),)
                          ))),
                          route=='/'?Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/4');
                          }, child:
                          (
                              Text('Вход',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),)
                          ))):  Container(
                              width: MediaQuery.of(context).size.width,
                              height: 70,
                              child: TextButton(onPressed: (){
                                showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    actionsPadding: EdgeInsets.all(0),
                                    // title: Text('Add name/important/deadline'),
                                    content:
                                    Container(
                                        height: 200,
                                        width: 200,
                                        color: Colors.white70,
                                        child:
                                        Column(
                                          children: [
                                            Text('Хотите выйти?')
                                          ],
                                        )),
                                    actions: [
                                      TextButton(onPressed: (){
                                        route='/';
                                        Navigator.pushNamed(context, '/');
                                      }, child: Text('Да', style: TextStyle(
                                          color: Colors.black
                                      ),))
                                    ],
                                  );
                                }); }, child:
                              (
                                  Text('Выход',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,

                                  ),)
                              ))),
                      route=='/'?Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/5');
                          }, child:
                          (
                              Text('Регистрация',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

                              ),)
                          ))):
                      Container(),
                    ],
                  ),
                ),
              );
            });
          },
              child: Icon(Icons.menu_outlined, color: Colors.white,))
      ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),

                  width: MediaQuery.of(context).size.width<=1000?MediaQuery.of(context).size.width*0.9
                      :MediaQuery.of(context).size.width*0.8,
                  child: Text('Актуальные курсы валют',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.fromLTRB(1, 1, 1, 2),
                  color: Colors.black45,
                  width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.8
                      :MediaQuery.of(context).size.width-10,
                  height: MediaQuery.of(context).size.height*0.7,
                  child: ListView.builder(
                controller: _scrollController,
                itemCount: 19,
                itemBuilder: (_, index) {
                  if(index == 0)
                    vp = 1;
                  else
                  if(index == 1 || index == 2 || index == 3)
                    vp = 3;
                  else
                  if(index == 4)
                    vp = 6;
                  else
                  if(index == 5)
                    vp = 7;
                  else
                  if(index == 6)
                    vp = 8;
                  else
                  if(index == 7)
                    vp = 9;
                  else
                  if(index == 8)
                    vp = 10;
                  else
                  if(index == 9)
                    vp = 11;
                  else
                  if(index == 10)
                    vp = 12;
                  else
                  if(index == 11)
                    vp = 13;
                  else
                  if(index == 12)
                    vp = 14;
                  else
                  if(index == 13)
                    vp = 15;
                  else
                  if(index == 14)
                    vp = 16;
                  else
                  if(index == 15)
                    vp = 17;
                  else
                  if(index == 16)
                    vp = 18;
                  if(index == 17)
                    vp = 19;
                  if(index == 18)
                    vp = 20;
                  if(index == 19)
                    vp = 21;
                  if(vp!=19&&vp!=20)
                  return Container(
                    margin: EdgeInsets.fromLTRB(3,3,3,0),
                    width:  MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                    :MediaQuery.of(context).size.width*0.8,
                    height: 40,
                    color: Colors.white10,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(allcoins[index].icon),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Container(child:
                        Text(allcoins[index].name, style: TextStyle(
                            color: Colors.white,
                          fontSize: 12,
                        ),),),
                            ],
                          ),
                         ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child:
                        Text((1/Courses1[vp]).toString()+" USD", style: TextStyle(
                            color: Colors.white,
                          fontSize: 12,

                        ),),),
                      ],
                    ),
                  );
                  return Container(
                    margin: EdgeInsets.fromLTRB(3,3,3,0),
                    width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                        :MediaQuery.of(context).size.width*0.8,
                    height: 40,
                    color: Colors.white10,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(allbanks[index-2].icon),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(child:
                              Text(allbanks[index-2].name, style: TextStyle(
                                  color: Colors.white
                              ),),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child:
                          Text((1/Courses1[vp]).toString()+" USD", style: TextStyle(
                              color: Colors.white
                          ),),),
                      ],
                    ),
                  );
                }
                            ),)
      ])
     )
    ));
  }
}