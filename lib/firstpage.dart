import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';

String svalue = '1';
double dvalue = 1.0;
double dvalue1 = 1.0;

String c1 ='',c2='';

List<int> color = [
  0,
  255,
  255,
  0,
  255,
  255,
];

int fontsize1 = 14;

int type1 = 0;
int type2 = 0;

int typeforcourse1 = 1;
int typeforcourse2 = 1;

bool f1= false;
int v1 = 0;
int v2 = 0;
int i1 = 17;
int i2 = 17;



String mystr = "Введите номер вашего кошелька";

class UserPanel0 extends StatefulWidget {
  const UserPanel0({Key? key}) : super(key: key);

  @override
  State<UserPanel0> createState() => _UserPanel0State();
}

class _UserPanel0State extends State<UserPanel0> {
  late TextEditingController _controller;

  bool check1 = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return MediaQuery.of(context).size.width>=1000?
    Scaffold(
        body:
        Container(
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
    Container(
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
      color: Colors.black87,
      fontSize: 14,
      fontWeight: FontWeight.bold,
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
    Container(
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
    ))),
      Container(
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
          ))),

    ],
    ),
    ),
      Container(
        margin: EdgeInsets.fromLTRB(20,40,0,0),

        width: MediaQuery.of(context).size.width,
        child: Text('МУЛЬТИВАЛЮТНЫЙ ОБМЕННЫЙ СЕРВИС',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),

    Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Container(
    margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    width: MediaQuery.of(context).size.width*0.25,
      height: 490,
    child: Column(
    children: [
    Container(
    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
    width: MediaQuery.of(context).size.width*0.25,
    child: Row(
    children: [
    Container(
    width: 85,
        height: 40,
    child: TextButton(onPressed: (){}, child:
    (
    Text('Отдаете',style: TextStyle(
    color: Colors.white,
    fontSize: 14,
       ),)
    ))),
    Container(
   width: MediaQuery.of(context).size.width*0.05,
        height: 40,
    child: TextButton(onPressed: (){
      setState(() {
        typeforcourse1 = 1;
        type1 = 0;
        v1 = 0;
        i1=17;
        color[0]=0;
        color[1]=255;
        color[2]=255;
      });
    }, child:
    (
    Text('Coin',style: TextStyle(
        color: Color.fromRGBO(color[0], color[0], color[0], 1.0),
    fontSize: 14,
      fontWeight: FontWeight.bold,

    ),)
    ))),
    Container(
       width: MediaQuery.of(context).size.width*0.05,
        height: 40,
    child: TextButton(onPressed: (){
      setState(() {
        typeforcourse1 = 0;
        type1 = 0;
        v1 = 1;
        i1=17;
        color[0]=255;
        color[1]=0;
        color[2]=255;
      });
    }, child:
    (
    Text('Банк',style: TextStyle(
        color: Color.fromRGBO(color[1], color[1], color[1], 1),
    fontSize: 14,
      fontWeight: FontWeight.bold,

    ),)
    ))),
    Container(
       width: MediaQuery.of(context).size.width*0.05,
        height: 40,
    child: TextButton(onPressed: (){
      setState(() {
        typeforcourse1 = 0;
        type1 = 0;
        v1 = 2;
        i1 = 11;
        color[0]=255;
        color[1]=255;
        color[2]=0;
      });

    }, child:
    (
    Text('ПС',style: TextStyle(
        color: Color.fromRGBO(color[2], color[2], color[2], 1),
    fontSize: 14,
      fontWeight: FontWeight.bold,

    ),)
    ))),
    ],
    ),
    ),

      Container(
        width: MediaQuery.of(context).size.width*0.25-20,
        height: 428,
        child: ListView.builder(
    controller: _scrollController,
    itemCount: i1,
    itemBuilder: (_, index) {
      if(v1 == 0)
          return Container(
            width: MediaQuery.of(context).size.width*0.25-60,
            height: 30,
            margin: EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            child: TextButton(onPressed: (){
              setState(() {
                type1 = index;
                if(type1 == 0)
                  typeforcourse1 = 1;
                else
                  if(type1 == 1 || type1 == 2 || type1 == 3)
                  typeforcourse1 = 3;
                else
                  if(type1 == 4)
                  typeforcourse1 = 6;
                  else
                if(type1 == 5)
                  typeforcourse1 = 7;
                  else
                  if(type1 == 6)
                    typeforcourse1 = 8;
                  else
                    if(type1 == 7)
                      typeforcourse1 = 9;
                    else
                if(type1 == 8)
                  typeforcourse1 = 10;
                else
                if(type1 == 9)
                  typeforcourse1 = 11;
                else
                if(type1 == 10)
                  typeforcourse1 = 12;
                else
                if(type1 == 11)
                  typeforcourse1 = 13;
                else
                if(type1 == 12)
                  typeforcourse1 = 14;
                else
                if(type1 == 13)
                  typeforcourse1 = 15;
                else
                if(type1 == 14)
                  typeforcourse1 = 16;
                else
                if(type1 == 15)
                  typeforcourse1 = 17;
                else
                if(type1 == 16)
                  typeforcourse1 = 18;
              });
            }, child:
            Row(
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
                  fontSize: 14,

                ),),),
              ],
            ),)
      );
      if(v1 == 1)
        return Container(
            width: MediaQuery.of(context).size.width*0.25-60,
            height: 30,
            margin: EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            child: TextButton(onPressed: (){
              setState(() {
                type1 = index;
                if(type1 == 0||type1 == 1||type1 == 5||type1 == 6||type1 == 7||type1 == 8||type1 == 9||type1 == 10||type1 == 11||type1 == 12||type1 == 13||type1 == 14)
                  typeforcourse1 = 0;
                else
                if(type1 == 3)
                  typeforcourse1 = 2;
                else
                if(type1 == 2)
                  typeforcourse1 = 21;
                if(type2 == 4 || type2 == 16)
                  typeforcourse2 = 19;
                if(type2 == 15)
                  typeforcourse2 = 20;
              });
            }, child:
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(allbanks[index].icon),
                        fit: BoxFit.contain),
                  ),
                ),
                Container(child:
                Text(allbanks[index].name, style: TextStyle(
                    color: Colors.white,
                  fontSize: 14,

                ),),),
              ],
            ),)
        );
      if(v1 == 2)
        return Container(
            width: MediaQuery.of(context).size.width*0.25-60,
            height: 30,
            margin: EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            child: TextButton(onPressed: (){

              setState(() {
                type1 = index;
                if(type1 == 0||type1 == 8||type1 == 9||type1 == 10)
                  typeforcourse1 = 0;
                else
                if(type1 == 2||type1 == 4||type1 == 6)
                  typeforcourse1 = 2;
                else
                if(type1 == 1||type1 == 3||type1 == 7)
                  typeforcourse1 = 21;
              });
            }, child:
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(allps[index].icon),
                        fit: BoxFit.contain),
                  ),
                ),
                Container(child:
                Text(allps[index].name, style: TextStyle(
                    color: Colors.white
                ),),),
              ],
            ),)
        );
      return Container();

    }),
      ),
    ],
    ),
    ),

      Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        width: MediaQuery.of(context).size.width*0.25,
        height: 490,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              width: MediaQuery.of(context).size.width*0.25,
              child: Row(
                children: [
                  Container(
                      width: 85,
                      height: 40,
                      child: TextButton(onPressed: (){}, child:
                      (
                          Text('Получаете',style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),)
                      ))),

                  Container(
                      width: MediaQuery.of(context).size.width*0.05,
                      height: 40,
                      child: TextButton(onPressed: (){
                        setState(() {
                          typeforcourse2 = 1;
                          type2 = 0;
                          mystr = "Введите номер вашего кошелька";
                          v2 = 0;
                          i2=17;
                          color[5]=255;
                          color[4]=255;
                          color[3]=0;
                        });
                      }, child:
                      (
                          Text('Coin',style: TextStyle(
                            color: Color.fromRGBO(color[3], color[3], color[3], 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,

                          ),)
                      ))),
                  Container(
                      width: MediaQuery.of(context).size.width*0.05,
                      height: 40,
                      child: TextButton(onPressed: (){
                        setState(() {
                          typeforcourse2 = 0;
                          type2 = 0;
                          mystr = "Введите номер вашей карты         ";
                          v2 = 1;
                          i2=17;
                          color[5]=255;
                          color[4]=0;
                          color[3]=255;
                        });
                      }, child:
                      (
                          Text('Банк',style: TextStyle(
                            color: Color.fromRGBO(color[4], color[4], color[4], 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,

                          ),)
                      ))),
                  Container(
                      width: MediaQuery.of(context).size.width*0.05,
                      height: 40,
                      child: TextButton(onPressed: (){
                        setState(() {
                          typeforcourse2 = 0;
                          type2 = 0;
                          mystr = "Введите номер вашего кошелька";
                          v2 = 2;
                          i2 = 11;
                          color[5]=0;
                          color[4]=255;
                          color[3]=255;
                        });

                      }, child:
                      (
                          Text('ПС',style: TextStyle(
                            color: Color.fromRGBO(color[5], color[5], color[5], 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,

                          ),)
                      ))),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.25-20,
              height: 428,
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: i2,
                  itemBuilder: (_, index) {
                    if(v2 == 0)
                      return Container(
                          width: MediaQuery.of(context).size.width*0.25-60,
                          height: 30,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: TextButton(onPressed: (){
                            setState(() {
                              type2 = index;
                              if(type2 == 0)
                                typeforcourse2 = 1;
                              else
                              if(type2 == 1 || type2 == 2 || type2 == 3)
                                typeforcourse2 = 3;
                              else
                              if(type2 == 4)
                                typeforcourse2 = 6;
                              else
                              if(type2 == 5)
                                typeforcourse2 = 7;
                              else
                              if(type2 == 6)
                                typeforcourse2 = 8;
                              else
                              if(type2 == 7)
                                typeforcourse2 = 9;
                              else
                              if(type2 == 8)
                                typeforcourse2 = 10;
                              else
                              if(type2 == 9)
                                typeforcourse2 = 11;
                              else
                              if(type2 == 10)
                                typeforcourse2 = 12;
                              else
                              if(type2 == 11)
                                typeforcourse2 = 13;
                              else
                              if(type2 == 12)
                                typeforcourse2 = 14;
                              else
                              if(type2 == 13)
                                typeforcourse2 = 15;
                              else
                              if(type2 == 14)
                                typeforcourse2 = 16;
                              else
                              if(type2 == 15)
                                typeforcourse2 = 17;
                              else
                              if(type2 == 16)
                                typeforcourse2 = 18;
                            });
                          }, child:
                          Row(
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
                                  color: Colors.white
                              ),),),
                            ],
                          ),)
                      );
                    if(v2 == 1)
                      return Container(
                          width: MediaQuery.of(context).size.width*0.25-60,
                          height: 30,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: TextButton(onPressed: (){
                            setState(() {
                              type2 = index;
                              if(type2 == 0||type2 == 1||type2 == 5||type2 == 6||type2 == 7||type2 == 8||type2 == 9||type2 == 10||type2 == 11||type2 == 12||type2 == 13||type2 == 14)
                                typeforcourse2 = 0;
                              else
                              if(type2 == 3)
                                typeforcourse2 = 2;
                              else
                              if(type2 == 2)
                                typeforcourse2 = 21;
                              if(type2 == 4 || type2 == 16)
                                typeforcourse2 = 19;
                              if(type2 == 15)
                                typeforcourse2 = 20;

                            });
                          }, child:
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(allbanks[index].icon),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(child:
                              Text(allbanks[index].name, style: TextStyle(
                                  color: Colors.white
                              ),),),
                            ],
                          ),)
                      );
                    if(v2 == 2)
                      return Container(
                          width: MediaQuery.of(context).size.width*0.25-60,
                          height: 30,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          child: TextButton(onPressed: (){
                            setState(() {
                              type2 = index;
                              if(type2 == 0||type2 == 8||type2 == 9||type2 == 10)
                                typeforcourse2 = 0;
                              else
                              if(type2 == 2||type2 == 4||type2 == 6)
                                typeforcourse2 = 2;
                              else
                              if(type2 == 1||type2 == 3||type2 == 7)
                                typeforcourse2 = 21;
                            });
                          }, child:
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(allps[index].icon),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(child:
                              Text(allps[index].name, style: TextStyle(
                                  color: Colors.white
                              ),),),
                            ],
                          ),)
                      );
                    return Container();

                  }),
            ),
          ],
        ),
      ),


    Container(
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      width: MediaQuery.of(context).size.width*0.45,
      height: 490,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: 30,
                  margin: EdgeInsets.only(top: 3),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        child:
                      ListView.builder(
                          controller: _scrollController,
                          itemCount: 1,
                          itemBuilder: (_, index) {
                            if (v1 == 0)
                              {
                                c1=allcoins[type1].name;
                                return Container(
                                width: 40,
                                height: 30,
                                child:
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(allcoins[type1].icon),
                                            fit: BoxFit.contain),
                                      ),
                                    ),

                                  ],
                                ),
                              );}
                            if (v1 == 1)
                                  {
                                    c1=allbanks[type1].name;
                                    return Container(
                                width: 40,
                                height: 30,
                                child:
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(allbanks[type1].icon),
                                            fit: BoxFit.contain),
                                      ),
                                    ),

                                  ],
                                ),
                              );}
                            if (v1 == 2)
                              {
                              c1=allps[type1].name;
                              return Container(
                                width: 40,
                                height: 30,
                                child:
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(allps[type1].icon),
                                            fit: BoxFit.contain),
                                      ),
                                    ),

                                  ],
                                ),
                              );}
                            return Container();
                          }
                      )),
                      Container(
                       padding: EdgeInsets.only(bottom: 7),
                        width: MediaQuery.of(context).size.width*0.2-60,
                        height: 25,
                        child: TextField(
                          controller: _controller,
                          onSubmitted: (String value) {
                            setState(() {
                              svalue = value;
                              dvalue = double.parse(svalue);
                            });
                          },

                          style: TextStyle(
                            fontSize: 14,
                              color: Colors.white
                          ),
                          decoration: InputDecoration(
                            hintText: '1',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                            ),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black12,
                                width: 0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabled: true,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: 30,
                  margin: EdgeInsets.only(top: 3),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 50,
                          child:
                          ListView.builder(
                              controller: _scrollController,
                              itemCount: 1,
                              itemBuilder: (_, index) {
                                if (v2 == 0)
                                  {
                                    c2=allcoins[type2].name;
                                    return Container(
                                    width: 40,
                                    height: 30,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(allcoins[type2].icon),
                                                fit: BoxFit.contain),
                                          ),
                                        ),

                                      ],
                                    ),
                                  );}
                                if (v2 == 1)
                                  {
                                    c2=allbanks[type2].name;

                                    return Container(
                                    width: 40,
                                    height: 30,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(allbanks[type2].icon),
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );}
                                if (v2 == 2)
                                 {
                                   c2=allps[type2].name;
                                   return Container(
                                    width: 40,
                                    height: 30,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(allps[type2].icon),
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );}
                                return Container();
                              }
                          )),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        width:  MediaQuery.of(context).size.width*0.2-60,
                        height: 150,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white
                          ),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            hintText: ((dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1])).toStringAsFixed(13)).toString(),
                            border: UnderlineInputBorder(),
                            disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black12,
                                width: 0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            enabled: false,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            width:  MediaQuery.of(context).size.width*0.4,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Ваш E-mail или Telegram                 ', style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                Container(
                  width:  MediaQuery.of(context).size.width*0.2-60,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),

                    decoration: InputDecoration(
                      hintText: 'username@gmail.com | @username',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Icon(Icons.email_outlined, color: Colors.white,size: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:  MediaQuery.of(context).size.width*0.4,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(mystr, style: TextStyle(
                      color: Colors.white
                  ),),
                ),
                Container(
                  width:  MediaQuery.of(context).size.width*0.2-60,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: InputDecoration(
                      hintText: 'adshjashd76ad77diqisadkjasjdkasldkjlae',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Icon(Icons.monetization_on, color: Colors.white,size: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width:  MediaQuery.of(context).size.width*0.4 ,
              child:
              Row(
                children: [
                  IconButton(onPressed: (){

                    if (check1)
                      setState(() {
                        check1=false;
                      });
                    else
                      setState(() {
                        check1=true;
                      });
                  }, icon: check1?Icon(Icons.check_box_outline_blank_sharp):Icon(Icons.check_box_outlined), color: Colors.white,),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/8');
                  }, child:
                  Text('Я согласен с правилами обмена',
                    style:
                    TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),)),
                ],
              )
          ),
          Container(
            width:  MediaQuery.of(context).size.width*0.2,
            height: 60,
            margin: EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextButton(onPressed: (){
              if(check1==false)
                {
                  dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                Navigator.pushNamed(context, '/9');
                }
            }, child:
            Center(child:Text('НАЧАТЬ ОБМЕН',style: TextStyle(
                fontSize: 14,
                color: Colors.white
            ),),)),

          )
        ],
      ),
    ),



      ],
    ),
    ),

    ],
    )
    )
    )):
    Scaffold(
        body:
        Container(
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
              ListView.builder(

              controller: _scrollController,
              itemCount: 1,
              itemBuilder: (_, index) { return
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0,10,0,0),

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
                                            color: Colors.black87,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
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
                                  Container(
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
                                      ))),
                                  Container(
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
                                      ))),

                                ],
                              ),
                            ),
                          );
                        });
                      },
                     child: Icon(Icons.menu_outlined, color: Colors.white,))
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20,10,0,20),

                      width: MediaQuery.of(context).size.width,
                      child: Text('МУЛЬТИВАЛЮТНЫЙ ОБМЕННЫЙ СЕРВИС',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Container(
                     // height: 1000,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 250,
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 100,
                                          height: 40,
                                          child: TextButton(onPressed: (){}, child:
                                          (
                                              Text('Отдаете',style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),)
                                          ))),
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse1 = 1;
                                              type1 = 0;
                                              v1 = 0;
                                              i1=17;
                                              color[0]=0;
                                              color[1]=255;
                                              color[2]=255;
                                            });
                                          }, child:
                                          (
                                              Text('Coin',style: TextStyle(
                                                color: Color.fromRGBO(color[0], color[0], color[0], 1.0),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse1 = 0;
                                              type1 = 0;
                                              v1 = 1;
                                              i1=17;
                                              color[0]=255;
                                              color[1]=0;
                                              color[2]=255;
                                            });
                                          }, child:
                                          (
                                              Text('Банк',style: TextStyle(
                                                color: Color.fromRGBO(color[1], color[1], color[1], 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse1 = 0;
                                              type1 = 0;
                                              v1 = 2;
                                              i1 = 11;
                                              color[0]=255;
                                              color[1]=255;
                                              color[2]=0;
                                            });

                                          }, child:
                                          (
                                              Text('ПС',style: TextStyle(
                                                color: Color.fromRGBO(color[2], color[2], color[2], 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                    ],
                                  ),
                                ),

                                Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 190,
                                  child: ListView.builder(
                                      controller: _scrollController,
                                      itemCount: i1,
                                      itemBuilder: (_, index) {
                                        if(v1 == 0)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.5,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){
                                                setState(() {
                                                  type1 = index;
                                                  if(type1 == 0)
                                                    typeforcourse1 = 1;
                                                  else
                                                  if(type1 == 1 || type1 == 2 || type1 == 3)
                                                    typeforcourse1 = 3;
                                                  else
                                                  if(type1 == 4)
                                                    typeforcourse1 = 6;
                                                  else
                                                  if(type1 == 5)
                                                    typeforcourse1 = 7;
                                                  else
                                                  if(type1 == 6)
                                                    typeforcourse1 = 8;
                                                  else
                                                  if(type1 == 7)
                                                    typeforcourse1 = 9;
                                                  else
                                                  if(type1 == 8)
                                                    typeforcourse1 = 10;
                                                  else
                                                  if(type1 == 9)
                                                    typeforcourse1 = 11;
                                                  else
                                                  if(type1 == 10)
                                                    typeforcourse1 = 12;
                                                  else
                                                  if(type1 == 11)
                                                    typeforcourse1 = 13;
                                                  else
                                                  if(type1 == 12)
                                                    typeforcourse1 = 14;
                                                  else
                                                  if(type1 == 13)
                                                    typeforcourse1 = 15;
                                                  else
                                                  if(type1 == 14)
                                                    typeforcourse1 = 16;
                                                  else
                                                  if(type1 == 15)
                                                    typeforcourse1 = 17;
                                                  else
                                                  if(type1 == 16)
                                                    typeforcourse1 = 18;
                                                });
                                              }, child:
                                              Row(
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
                                                    fontSize: 14,

                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        if(v1 == 1)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.25-60,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){
                                                setState(() {
                                                  type1 = index;
                                                  if(type1 == 0||type1 == 1||type1 == 5||type1 == 6||type1 == 7||type1 == 8||type1 == 9||type1 == 10||type1 == 11||type1 == 12||type1 == 13||type1 == 14)
                                                    typeforcourse1 = 0;
                                                  else
                                                  if(type1 == 3)
                                                    typeforcourse1 = 2;
                                                  else
                                                  if(type1 == 2)
                                                    typeforcourse1 = 21;
                                                  if(type2 == 4 || type2 == 16)
                                                    typeforcourse2 = 19;
                                                  if(type2 == 15)
                                                    typeforcourse2 = 20;
                                                });
                                              }, child:
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(allbanks[index].icon),
                                                          fit: BoxFit.contain),
                                                    ),
                                                  ),
                                                  Container(child:
                                                  Text(allbanks[index].name, style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,

                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        if(v1 == 2)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.25-60,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){

                                                setState(() {
                                                  type1 = index;
                                                  if(type1 == 0||type1 == 8||type1 == 9||type1 == 10)
                                                    typeforcourse1 = 0;
                                                  else
                                                  if(type1 == 2||type1 == 4||type1 == 6)
                                                    typeforcourse1 = 2;
                                                  else
                                                  if(type1 == 1||type1 == 3||type1 == 7)
                                                    typeforcourse1 = 21;
                                                });
                                              }, child:
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(allps[index].icon),
                                                          fit: BoxFit.contain),
                                                    ),
                                                  ),
                                                  Container(child:
                                                  Text(allps[index].name, style: TextStyle(
                                                      color: Colors.white
                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        return Container();

                                      }),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 240,
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 100,
                                          height: 40,
                                          child: TextButton(onPressed: (){}, child:
                                          (
                                              Text('Получаете',style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),)
                                          ))),

                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse2 = 1;
                                              type2 = 0;
                                              mystr = "Введите номер вашего кошелька";
                                              v2 = 0;
                                              i2=17;
                                              color[5]=255;
                                              color[4]=255;
                                              color[3]=0;
                                            });
                                          }, child:
                                          (
                                              Text('Coin',style: TextStyle(
                                                color: Color.fromRGBO(color[3], color[3], color[3], 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse2 = 0;
                                              type2 = 0;
                                              mystr = "Введите номер вашей карты         ";
                                              v2 = 1;
                                              i2=17;
                                              color[5]=255;
                                              color[4]=0;
                                              color[3]=255;
                                            });
                                          }, child:
                                          (
                                              Text('Банк',style: TextStyle(
                                                color: Color.fromRGBO(color[4], color[4], color[4], 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                      Container(
                                          width: MediaQuery.of(context).size.width*0.15,
                                          height: 40,
                                          child: TextButton(onPressed: (){
                                            setState(() {
                                              typeforcourse2 = 0;
                                              type2 = 0;
                                              mystr = "Введите номер вашего кошелька";
                                              v2 = 2;
                                              i2 = 11;
                                              color[5]=0;
                                              color[4]=255;
                                              color[3]=255;
                                            });

                                          }, child:
                                          (
                                              Text('ПС',style: TextStyle(
                                                color: Color.fromRGBO(color[5], color[5], color[5], 1),
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,

                                              ),)
                                          ))),
                                    ],
                                  ),
                                ),

                                Container(

                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 190,
                                  child: ListView.builder(
                                      controller: _scrollController,
                                      itemCount: i2,
                                      itemBuilder: (_, index) {
                                        if(v2 == 0)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.8,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){
                                                setState(() {
                                                  type2 = index;
                                                  if(type2 == 0)
                                                    typeforcourse2 = 1;
                                                  else
                                                  if(type2 == 1 || type2 == 2 || type2 == 3)
                                                    typeforcourse2 = 3;
                                                  else
                                                  if(type2 == 4)
                                                    typeforcourse2 = 6;
                                                  else
                                                  if(type2 == 5)
                                                    typeforcourse2 = 7;
                                                  else
                                                  if(type2 == 6)
                                                    typeforcourse2 = 8;
                                                  else
                                                  if(type2 == 7)
                                                    typeforcourse2 = 9;
                                                  else
                                                  if(type2 == 8)
                                                    typeforcourse2 = 10;
                                                  else
                                                  if(type2 == 9)
                                                    typeforcourse2 = 11;
                                                  else
                                                  if(type2 == 10)
                                                    typeforcourse2 = 12;
                                                  else
                                                  if(type2 == 11)
                                                    typeforcourse2 = 13;
                                                  else
                                                  if(type2 == 12)
                                                    typeforcourse2 = 14;
                                                  else
                                                  if(type2 == 13)
                                                    typeforcourse2 = 15;
                                                  else
                                                  if(type2 == 14)
                                                    typeforcourse2 = 16;
                                                  else
                                                  if(type2 == 15)
                                                    typeforcourse2 = 17;
                                                  else
                                                  if(type2 == 16)
                                                    typeforcourse2 = 18;
                                                });
                                              }, child:
                                              Row(
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
                                                      color: Colors.white
                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        if(v2 == 1)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.25-60,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){
                                                setState(() {
                                                  type2 = index;
                                                  if(type2 == 0||type2 == 1||type2 == 5||type2 == 6||type2 == 7||type2 == 8||type2 == 9||type2 == 10||type2 == 11||type2 == 12||type2 == 13||type2 == 14)
                                                    typeforcourse2 = 0;
                                                  else
                                                  if(type2 == 3)
                                                    typeforcourse2 = 2;
                                                  else
                                                  if(type2 == 2)
                                                    typeforcourse2 = 21;
                                                  if(type2 == 4 || type2 == 16)
                                                    typeforcourse2 = 19;
                                                  if(type2 == 15)
                                                    typeforcourse2 = 20;

                                                });
                                              }, child:
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(allbanks[index].icon),
                                                          fit: BoxFit.contain),
                                                    ),
                                                  ),
                                                  Container(child:
                                                  Text(allbanks[index].name, style: TextStyle(
                                                      color: Colors.white
                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        if(v2 == 2)
                                          return Container(
                                              width: MediaQuery.of(context).size.width*0.25-60,
                                              height: 30,
                                              margin: EdgeInsets.only(top: 3),
                                              decoration: BoxDecoration(
                                                color: Colors.black45,
                                                borderRadius: BorderRadius.all(Radius.circular(2)),
                                              ),
                                              child: TextButton(onPressed: (){
                                                setState(() {
                                                  type2 = index;
                                                  if(type2 == 0||type2 == 8||type2 == 9||type2 == 10)
                                                    typeforcourse2 = 0;
                                                  else
                                                  if(type2 == 2||type2 == 4||type2 == 6)
                                                    typeforcourse2 = 2;
                                                  else
                                                  if(type2 == 1||type2 == 3||type2 == 7)
                                                    typeforcourse2 = 21;
                                                });
                                              }, child:
                                              Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(allps[index].icon),
                                                          fit: BoxFit.contain),
                                                    ),
                                                  ),
                                                  Container(child:
                                                  Text(allps[index].name, style: TextStyle(
                                                      color: Colors.white
                                                  ),),),
                                                ],
                                              ),)
                                          );
                                        return Container();

                                      }),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            width: MediaQuery.of(context).size.width*0.8,
                            height: 500,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width*0.78,
                                        height: 30,
                                        margin: EdgeInsets.only(top: 3),
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 50,
                                                child:
                                                ListView.builder(
                                                    controller: _scrollController,
                                                    itemCount: 1,
                                                    itemBuilder: (_, index) {
                                                      if (v1 == 0)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allcoins[type1].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),

                                                            ],
                                                          ),
                                                        );
                                                      if (v1 == 1)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allbanks[type1].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),

                                                            ],
                                                          ),
                                                        );
                                                      if (v1 == 2)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allps[type1].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),

                                                            ],
                                                          ),
                                                        );
                                                      return Container();
                                                    }
                                                )),
                                            Container(
                                              padding: EdgeInsets.only(bottom: 4),
                                              width: MediaQuery.of(context).size.width*0.78-60,
                                              height: 40,
                                              child: TextField(
                                                controller: _controller,
                                                onSubmitted: (String value) {
                                                  setState(() {
                                                    svalue = value;
                                                    dvalue = double.parse(svalue);
                                                  });
                                                },

                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white
                                                ),
                                                decoration: InputDecoration(
                                                  hintText: '1',
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white
                                                  ),
                                                  border: UnderlineInputBorder(),
                                                  enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0,
                                                      style: BorderStyle.solid,
                                                    ),
                                                  ),
                                                  enabled: true,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      Container(
                                        width: MediaQuery.of(context).size.width*0.78,
                                        height: 30,
                                       // padding: EdgeInsets.only(bottom: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 50,
                                                child:
                                                ListView.builder(
                                                    controller: _scrollController,
                                                    itemCount: 1,
                                                    itemBuilder: (_, index) {
                                                      if (v2 == 0)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allcoins[type2].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),

                                                            ],
                                                          ),
                                                        );
                                                      if (v2 == 1)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allbanks[type2].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      if (v2 == 2)
                                                        return Container(
                                                          width: 40,
                                                          height: 30,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                                                width: 30,
                                                                height: 30,
                                                                decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(allps[type2].icon),
                                                                      fit: BoxFit.contain),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      return Container();
                                                    }
                                                )),
                                            Container(
                                              padding: EdgeInsets.only(bottom: 4),
                                              width:  MediaQuery.of(context).size.width*0.78-60,
                                              height: 150,
                                              child: TextField(
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                                decoration: InputDecoration(
                                                  hintStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                  hintText: ((dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1])).toStringAsFixed(13)).toString(),
                                                  border: UnderlineInputBorder(),
                                                  disabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0,
                                                      style: BorderStyle.solid,
                                                    ),
                                                  ),
                                                  enabled: false,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  width:  MediaQuery.of(context).size.width*0.8,
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Text('Ваш E-mail или Telegram                 ', style: TextStyle(
                                            color: Colors.white,
                                          fontSize: 8,
                                        ),),
                                      ),
                                      Container(
                                        width:  MediaQuery.of(context).size.width*0.38,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.white
                                          ),

                                          decoration: InputDecoration(
                                            hintText: 'username@gmail.com | @username',
                                            hintStyle: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                            ),
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                              child: Icon(Icons.email_outlined, color: Colors.white,size: 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:  MediaQuery.of(context).size.width*0.8,
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Text(mystr, style: TextStyle(
                                            color: Colors.white,
                                          fontSize: 8,

                                        ),),
                                      ),
                                      Container(
                                        width:  MediaQuery.of(context).size.width*0.38,
                                        child: TextField(
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'adshjashd76ad77diqisadkjasjdkasldkjlae',
                                            hintStyle: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                              child: Icon(Icons.monetization_on, color: Colors.white,size: 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    width:  MediaQuery.of(context).size.width*0.8,
                                    child:
                                    Row(
                                      children: [
                                        IconButton(onPressed: (){

                                          if (check1)
                                            setState(() {
                                              check1=false;
                                            });
                                          else
                                            setState(() {
                                              check1=true;
                                            });
                                        }, icon: check1?Icon(Icons.check_box_outline_blank_sharp):Icon(Icons.check_box_outlined), color: Colors.white,),
                                        TextButton(onPressed: (){
                                          Navigator.pushNamed(context, '/8');
                                        }, child:
                                        Text('Я согласен с правилами обмена',
                                          style:
                                          TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),)),
                                      ],
                                    )
                                ),
                                Container(
                                  width:  MediaQuery.of(context).size.width*0.6,
                                  height: 60,
                                  margin: EdgeInsets.only(top: 3),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: TextButton(onPressed: (){
                                    if(check1==false)
                                    {
                                      dvalue1 = (dvalue*(Courses1[typeforcourse2]/Courses1[typeforcourse1]));
                                      Navigator.pushNamed(context, '/9');
                                    }
                                  }, child:
                                  Center(child:Text('НАЧАТЬ ОБМЕН',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white
                                  ),),)),

                                )
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),

                  ],
                );})
            )
        ));
  }

  void into() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
}