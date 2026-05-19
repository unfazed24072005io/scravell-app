import 'package:flutter/material.dart';
import 'package:four_step_login/screens/concent_form.dart';
import 'package:four_step_login/screens/home_page.dart';
import 'package:four_step_login/screens/parent_home.dart';
import 'package:four_step_login/screens/payment_success_page.dart';
import 'package:four_step_login/screens/splash_screen.dart';
import 'package:four_step_login/screens/student_profile_page.dart';
import 'package:four_step_login/screens/wallet_detail_page.dart';

class Maintestbtn extends StatelessWidget {
  const Maintestbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scravel-App"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => SplashScreen(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Splash screen",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => ConcentForm(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Concent Form",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => HomePage(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Home Page",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => ParentHome(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Parent Home",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => PaymentSuccessPage(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Payment Success Page",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => StudentProfilePage(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Student Profile Page",style: TextStyle(fontSize: 18),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                        context) => WalletDetailPage(), // Aapke naye page ka name
                  ),
                );
              },
              child: Text("Wallet Detail Page",style: TextStyle(fontSize: 18),),
            ),
          )
        ],
      )
    );
  }
}
