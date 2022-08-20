import 'dart:ui';

import 'package:cryptochange/classes/classes.dart';
import 'package:cryptochange/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'domains/user.dart';
import 'курсы.dart';
import 'dart:math';

import 'main.dart';


class Vhod extends StatefulWidget {
  const Vhod({Key? key}) : super(key: key);

  @override
  State<Vhod> createState() => _VhodState();
}

class _VhodState extends State<Vhod> {
  late TextEditingController _controller;
  String email='',password='';
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;


  AuthService _authService = AuthService();


  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();

  }

  @override
  void dispose() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
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
    child: TextButton(onPressed: (){
    Navigator.pushNamed(context, '/4');
    }, child:
    (
    Text('Вход',style: TextStyle(
      color: Colors.black87,
      fontSize: 14,
      fontWeight: FontWeight.bold,
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
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,

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
                    margin: EdgeInsets.fromLTRB(20,40,0,0),

                    width: MediaQuery.of(context).size.width*0.6,
                    child: Text('Вход',
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

                        SizedBox(),
                        SizedBox(),

                        SizedBox(),
                        SizedBox(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          height: 45,
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
                        Container(
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.4
                              :MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextField(
                            controller: _passwordcontroller,
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
                          width: MediaQuery.of(context).size.width>=1000?MediaQuery.of(context).size.width*0.2
                              :MediaQuery.of(context).size.width*0.6,
                          height: 60,
                          margin: EdgeInsets.only(top: 3),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(onPressed: (){
                            route = '/7';
                            goin();
                          }, child:
                          Center(child:Text('ВХОД',style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                          ),),)),
                        ),


                        SizedBox(),
                        SizedBox(),

                        SizedBox(),
                        SizedBox(),
                      ],
                    ),
                  ),
                ])
        )
    ));
  }

  void goin() async{
    print('wtf');
    email = _emailcontroller.text;
    password = _passwordcontroller.text;
    User1? user = await _authService.signInWithEmailAndPassword(email, password);
  if (user == null)
    Fluttertoast.showToast(
        msg: "Cant Sign In You",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  else {
    Navigator.pushNamed(context, '/7');
    _emailcontroller.clear();
    _controller.clear();
    _passwordcontroller.clear();
  }

  }




}

































