import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:flutter/material.dart';
import 'firstpage.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';


class Obmen extends StatefulWidget {
  const Obmen({Key? key}) : super(key: key);

  @override
  State<Obmen> createState() => _ObmenState();
}

class _ObmenState extends State<Obmen> {
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
        body: Container(
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
                  ): Container(
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
                    child:  Text('Ваша заявка №109 032 Е0', style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      //  fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    color: Colors.black45,
                    width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.8
                        :MediaQuery.of(context).size.width-10,
                    height: MediaQuery.of(context).size.height*0.7,
                    child:
                    ListView.builder(
                    controller: _scrollController,
                    itemCount: 1,
                    itemBuilder: (_, index) {
                      return
                      Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width*0.8,
                          height: MediaQuery.of(context).size.height*0.7,
                          child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                        //  height:30,
                         child:
                          Text('Ожидайте, реквизиты придут на указанную Вами почту',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                        ),
                    ),),
                        Container(
                          color: Colors.white12,
                          width: MediaQuery.of(context).size.width*0.8,
                          height:MediaQuery.of(context).size.height*0.1,
                          child:
                          TextButton(onPressed: (){}, child:
                          Text('Я оплатил',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height:50,
                            child:
                            //v1==0?
                          Text('Вы отдаете :\n $svalue $c1',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                           height:50,
                          child:
                          Text('Вы получаете :\n $dvalue1 $c2',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),),
                          ),
                      ],
                    ));
                    }),
                  ),
                ])
        )
    ));
  }
}