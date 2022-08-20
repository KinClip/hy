import 'package:cryptochange/Otzivi.dart';
import 'package:cryptochange/contacts.dart';
import 'package:cryptochange/kursi.dart';
import 'package:cryptochange/reestration.dart';
import 'package:cryptochange/reservi.dart';
import 'package:cryptochange/userpage.dart';
import 'package:cryptochange/usloviya.dart';
import 'package:cryptochange/vhod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

import 'firstpage.dart';
import 'dart:io';

import 'obmen.dart';

List<bool> Routes =[
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
String route = '/';

void main()
async
{
  print('main');
  start().then((value) => null);
  await start1();
  print('main2');

}

Future start1() async {
  print('st1');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
      apiKey: "AIzaSyAL6iSmFDmDDD78wiWg3VFFp4JXsyib7AM",

      authDomain: "truexchange24cr.firebaseapp.com",

      projectId: "truexchange24cr",

      storageBucket: "truexchange24cr.appspot.com",

      messagingSenderId: "1048220915011",

      appId: "1:1048220915011:web:9342916f9c0cedc8e38bf6"

  ),);
}

Future<Map<String,String>> start() {
  print('st');
  runApp(MaterialApp(
    initialRoute: '/',
    title: 'Обменник Валют',
    routes: {
      '/': (context) => UserPanel0(),
      '/1': (context) => Courses(),
      '/2': (context) => Otzivi(),
      '/3': (context) => Reservi(),
      '/4': (context) => Vhod(),
      '/5': (context) => Reestr(),
      '/6': (context) => Contacts(),
      '/7': (context) => UserPanel1(),
      '/8': (context) => uslovia(),
      '/9': (context) => Obmen(),
    },
  ));
  return Future.delayed(Duration(seconds: 1), () => {'id':'d','sad':'e'});
}

