import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_getx_demo/controller/auth_controller.dart';


import '../../widgets/glitch.dart';
import '../../widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlithEffect(child: const Text("TikTok",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                myLabelText: "Email",
                myIcon: Icons.email,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordContoller,
                myLabelText: "Password",
                myIcon: Icons.lock,
                toHide: true,
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              AuthController.instance.login(_emailController.text, _passwordContoller.text);
            }, child: Container(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),child: Text("Login")))
          ],
        ),
      ),
    );
  }
}
