import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:cryptochange/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'domains/user.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';


class Reestr extends StatefulWidget {
  const Reestr({Key? key}) : super(key: key);

  @override
  State<Reestr> createState() => _ReestrState();
}

class _ReestrState extends State<Reestr> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _password1controller = TextEditingController();


  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  String iconname = 'check_box_outline_blank_sharp';
  bool check = true;
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
                                            color: Color.fromRGBO(246, 201, 67, 1.0),
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
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,

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
                    margin: EdgeInsets.fromLTRB(20,40,0,0),

                    width: MediaQuery.of(context).size.width<=1000?MediaQuery.of(context).size.width*0.9
                        :MediaQuery.of(context).size.width*0.6,
                    child: Text('Регистрация',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.6
                        :MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                              :MediaQuery.of(context).size.width*0.8,
                          child: TextField(
                            controller: _emailcontroller,
                            onSubmitted: (String value) {
                              setState(() {
                                email = value;
                              });
                            },
                            style: TextStyle(
                                color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabled: true,

                              hintText: 'ВАША ЭЛЕКТРОННАЯ ПОЧТА',
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
                        SizedBox(
                          width: 1,
                          height: 1,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                              :MediaQuery.of(context).size.width*0.8,
                          child: TextField(
                            obscureText: true,
                            controller: _passwordcontroller,
                            onSubmitted: (String value) {
                              setState(() {
                                password = value;
                              });
                            },
                            style: TextStyle(
                                color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabled: true,

                              hintText: 'ПАРОЛЬ',
                              hintStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Icon(Icons.lock, color: Colors.white,size: 20),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                              :MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextField(
                            obscureText: true,

                            controller: _password1controller,
                            onSubmitted: (String value) {
                              setState(() {
                                password1 = value;
                              });
                            },
                            style: TextStyle(
                                color: Colors.white
                            ),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabled: true,

                              hintText: 'ПОВТОРИТЬ ПАРОЛЬ',
                              hintStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Icon(Icons.lock, color: Colors.white,size: 20),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                              :MediaQuery.of(context).size.width*0.8,
                          child: Text('Внимание! Пароль должен состоять из 8 и более символов, прописных и заглавных букв, а так же цифр',
                          style:
                          TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                                :MediaQuery.of(context).size.width*0.8,
                            child:
                          Row(
                            children: [
                              IconButton(onPressed: (){

                                if (check)
                                  setState(() {
                                  check=false;
                                });
                                else
                                  setState(() {
                                    check=true;
                                  });
                              }, icon: check?Icon(Icons.check_box_outline_blank_sharp):Icon(Icons.check_box_outlined), color: Colors.white,),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/8');
                          },
                              child:Text('Я согласен с правилами обмена',
                              style:
                            TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),)),
                            ],
                          )
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.2
                              :MediaQuery.of(context).size.width*0.6,
                          height: 60,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(onPressed: (){
                            if(check == false)
                                reg();
                          }, child:
                          Center(child:Text('РЕГИСТРАЦИЯ',style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                          ),),)),

                        ),

                      ],
                    ),
                  ),
                ])
        )
    ));
  }

  String email='',password='', password1='';
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;

  late TextEditingController _password1controller;

  AuthService _authService = AuthService();




  void reg() async{

    email = _emailcontroller.text;
    password = _passwordcontroller.text;
    password1 = _password1controller.text;

    if(password==password1)
      {
        print('wtf');
        User1? user = await _authService.registerInWithEmailAndPassword(email, password);
    if (user != null) {
      Fluttertoast.showToast(
          msg: "Аккаунт был успешно добавлен",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.pushNamed(context, '/4');
    }}
    else {
      _emailcontroller.clear();
      _controller.clear();
      _passwordcontroller.clear();
    }

  }

}