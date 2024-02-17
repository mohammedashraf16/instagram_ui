import 'package:app_login/code_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {

  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController=TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E0D0D),
        title: Text("Forget Password"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF131212),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(5),
              child: TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF444444),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Email Required";
                  }
                  return null ;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () => forget(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0AB979),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Send Code",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void forget() {
    if(!formKey.currentState!.validate()){
      return;
    }
    String email =emailController.text;
    if (email == "mohammed@gmail.com") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const CodeScreen(),
        ),
      );
    }
  }
}

