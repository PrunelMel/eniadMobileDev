import 'package:flutter/material.dart';

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

          Form(
            child:Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.badge_outlined),
                    hintText: "Code Apogé"
                  ),

                )
              ],
            )
          ),

        ],
      ),
    );
  }
}

