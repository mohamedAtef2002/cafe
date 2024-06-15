

import 'package:coffie_shop/Classs/Button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool visibal = true ;
  bool visibal1 = true ;
  final _formKey = GlobalKey<FormState>();
  String _email = '' , _password = '' , _fname ='' , _lname ='' ,_birthday = '' , _phone = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10 ,right: 10),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) => _fname = value,
              validator: (value) => value!.length < 3 ? "enter a valid name" : null,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "First Name"
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (value) => _lname = value,
              validator: (value) => value!.length < 3 ? "enter a valid name" : null,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Last Nmae"
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (value) => _email = value,
              validator: (value) => value!.length < 16 ? "enter a valid email" : null ,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Enter Your Email ",
                hintText: "test@gmail.com",
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (value) => _password =value,
              validator: (value) => value!.length < 8 ? "password must be large than 8 character" : null,
              keyboardType: TextInputType.visiblePassword,
              obscureText: visibal,
              decoration: InputDecoration(
                labelText: "Enter Your Password",
                suffixIcon: IconButton(
                  onPressed: (){
                    visibal = !visibal;
                    setState(() {});
                  },
                  icon: visibal == true ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),
                )
              ),
            ),
              TextFormField(
                validator: (value) => (value != _password || value!.isEmpty) ? "is not the same password" : null,
                keyboardType: TextInputType.visiblePassword,
                obscureText: visibal1,
                decoration: InputDecoration(
                    labelText: "Enter Your Password",
                    suffixIcon: IconButton(
                      onPressed: (){
                        visibal1 = !visibal1;
                        setState(() {});
                      },
                      icon: visibal1 == true ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined),
                    )
                ),
              ),
            SizedBox(height: 10,),
            TextFormField(onChanged: (value) => _phone = value,
              validator: (value) => value!.length < 11 ? "enter a valid number" : null,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Enter Yuor Phone Number"
              ),
            ),
            SizedBox(height: 10,),
            InputDatePickerFormField(firstDate: DateTime(1999), lastDate: DateTime.now(),
              keyboardType: TextInputType.datetime,
              initialDate: DateTime.tryParse(_birthday),

            ),
            SizedBox(height: 50,),
            Button(onPressed:() {
              if(_formKey.currentState!.validate()){
                final String first_name = _fname ;
                final String last_name = _lname ;
                final String email = _email ;
                final String password = _password ;
                final String birthday = _birthday;
                final String phone =_phone;
                Navigator.of(context).pushNamed("Login");
              }
            },
            text: "Signup",
            textColor: Colors.white,
            bgColor: Color(0xffB14130),
            ),
          ],
            ),
        ),
      ),
    );
  }
}
