import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:password/helper/custom_button.dart';
import 'package:password/helper/custom_text_field.dart';
import 'package:password/screen/home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
String _id="jannatsuha@gmail.com";
String _password="123456@#suha";
TextEditingController _emailController= TextEditingController();
TextEditingController _passController= TextEditingController();
class _LoginState extends State<Login> {
  final _formKey2=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey2,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Icon(Icons.ac_unit,
                size: 140,color: Colors.teal,),
              SizedBox(
                height: 40,
              ),
              CustomTextField(
                controller: _emailController,
                labelText: "ID",
                hintText: "Enter ID",
                icon: Icons.email,
                obsecureValue: false,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                obsecureValue: true,
                controller: _passController,
                labelText: "PASSWORD",
                hintText: "Enter Password",
                icon: Icons.vpn_key_sharp,

              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  logIn(_emailController.text,
                      _passController.text,_formKey2
                      ,context);
                },
                child: CustomButton(
                  height: 50,
                  width: 100,
                  buttonClr: Colors.teal,
                  buttonText: "Log In",
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void logIn(String id, String password,_formKey2,
    BuildContext context)async{
  if(_formKey2.currentState!.validate()){
    if(id==_id && password==_password){
      Fluttertoast.showToast(msg: "Login Successful");

      Navigator.push(context,
          MaterialPageRoute(
              builder: (context)=>HomePage()));
    } else{
      Fluttertoast.showToast(msg: "Invalid id or password");
    }
  }
}