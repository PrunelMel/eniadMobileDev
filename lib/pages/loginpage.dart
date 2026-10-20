import 'package:flutter/material.dart';
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



class FormHeader extends StatelessWidget{
  const FormHeader({super.key});

  @override
  Widget build(BuildContext context){

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.8,
      padding: EdgeInsets.only(left: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bon retour",
            style: TextStyle(
              color:Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
      
          Text("Connectez-vous avec votre compte", style: TextStyle(fontSize: 25, color: Colors.black38),),
        ],
      ),
    );
  }
}
