import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:flutter/material.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
    Color.fromRGBO(152, 193, 217, 1),
    Color.fromRGBO(224, 251, 252, 1),
    Color.fromRGBO(238, 108, 77, 1),
    Color.fromRGBO(41, 50, 65, 1),



    ],
    )),
    child: Container(
    color: Colors.black45,
    child:
    Column(
    children: [
      MediaQuery.of(context).size.width>=1000?Container(
    decoration: BoxDecoration(
    color: Colors.transparent,
    ),
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Container(
    width: 90,
    height: 70,
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/logo.png"),
    fit: BoxFit.contain),
    ),),
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
    Text('Сотрудничество',style: TextStyle(
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
    color: Colors.black87,
    fontSize: 14,
    fontWeight: FontWeight.bold
    ),)
    ))),

    Container(
    width: MediaQuery.of(context).size.width*0.1,
    height: 70,
    child: TextButton(onPressed: (){
    Navigator.pushNamed(context, '/1');
    }, child:
    (
    Text('Курсы валют',style: TextStyle(
    color: Colors.white,
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
    route=='/'?Container(
    width: MediaQuery.of(context).size.width*0.1,
    height: 70,
    child: TextButton(onPressed: (){
    Navigator.pushNamed(context, '/4');
    }, child:
    (
    Text('Вход',style: TextStyle(
    color: Colors.white,
    fontSize: 14,

    ),)
    ))): Container(
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
                        width: 90,
                        height: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.contain),
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
                              Text('Сотрудничество',style: TextStyle(
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
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),)
                          ))),

                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/1');
                          }, child:
                          (
                              Text('Курсы валют',style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,

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
                          ))): Container(
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
                          ))):Container(),

                    ],
                  ),
                ),
              );
            });
          },
              child: Icon(Icons.menu_outlined, color: Colors.white,))
      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: MediaQuery.of(context).size.width*0.8,
                        height:30,
                        child:  Text('Контакты', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                        //    fontWeight: FontWeight.bold
                        ),),
                      ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    color: Colors.black45,
                      width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.8
                          :MediaQuery.of(context).size.width-10,
                    height: MediaQuery.of(context).size.height*0.7,
                    child: MediaQuery.of(context).size.width>=1000? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          height: MediaQuery.of(context).size.height*0.7,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(child: Icon(Icons.email,
                            size: MediaQuery.of(context).size.width*0.3,
                            color: Colors.white54,)),
                             Container(child:
                               Text('support24@gmail.com',style: TextStyle(
                              color: Colors.white54,
                                fontSize: 20
                              ),),
                                 ),

                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          height: MediaQuery.of(context).size.height*0.7,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(child: Icon(Icons.telegram,
                                size: MediaQuery.of(context).size.width*0.3,
                                color: Colors.white54,)),
                              Container(child:
                              Text('@support24/7',style: TextStyle(
                                 color: Colors.white54,
                                  fontSize: 20
                              ),),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ):Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          height: MediaQuery.of(context).size.height*0.35,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(child: Icon(Icons.email,
                                size: MediaQuery.of(context).size.width*0.2,
                                color: Colors.white54,)),
                              Container(child:
                              Text('support24@gmail.com',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          height: MediaQuery.of(context).size.height*0.35,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(child: Icon(Icons.telegram,
                                size: MediaQuery.of(context).size.width*0.2,
                                color: Colors.white54,)),
                              Container(child:
                              Text('@support24/7        ',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),),
                              ),

                            ],
                          ),
                        ),
                      ],
                    )



                  ),
                ])
        )
    ));
  }
}