import 'dart:ffi';

import 'package:coffie_shop/Classs/Button.dart';
import 'package:flutter/material.dart';


class loginForm extends StatefulWidget {

  @override
  State<loginForm> createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  bool visible = true ;
  String _email = '' , _password = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
        child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 10 , right: 10,),
              child: Column(
               // mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) => _email = value,
                          validator: (value) => value!.length < 16 ? "enter a valid email" : null ,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "test@gmail.com",
                            labelText: "Enter Your Email Address"
                          ),
                        ),

                  SizedBox(height: 30,),
                  TextFormField(
                    onChanged: (value) => _password =value,
                    validator: (value) => value!.length < 8 ? "password must be large than 8 character" : null,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: visible,
                    decoration: InputDecoration(
                        labelText: "Enter Your Password",
                        suffixIcon: IconButton(
                          onPressed: (){
                            visible = !visible;
                            setState(() {});
                          },
                          icon: visible == true ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),
                        )
                    ),
                  ),
                      ],
              ),
            ),
                  SizedBox(height: 60,),
                  Button(
                      text: "Login",
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          final String email = _email;
                          final String password = _password;
                          Navigator.of(context).pushNamed('home');
                        }
                      },
                      textColor: Colors.white,
                      bgColor: Color(0xffB14130))
                ],
              ),
            ),
      );

  }
}
