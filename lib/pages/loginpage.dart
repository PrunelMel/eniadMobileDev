import 'package:flutter/material.dart';
import 'package:self_learning/pages/form_header.dart';
import 'package:self_learning/pages/login_page_header.dart';


class LoginPage extends StatefulWidget{

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 50,
        children: [
        LoginPageHeader(),
        FormHeader(),
      ],),
    );
  }

}