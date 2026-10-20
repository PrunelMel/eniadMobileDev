import 'package:flutter/material.dart';

class LoginPageHeader extends StatelessWidget{
  const LoginPageHeader({super.key});
  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height:screenHeight * 0.25,
      decoration: BoxDecoration(
        color: const Color(0xFFA0523D),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(90))
      ),
      child:Column(

        children: [
          SizedBox(height: 30,),
          Image.asset('assets/images/eniadlogocroped.png', width: 150,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Text(
              "Espace étudiant",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
