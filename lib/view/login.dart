import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  bool _isEmail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log in",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          if (GetUtils.isEmail(value)) {
                            _isEmail = true;
                          } else {
                            _isEmail = false;
                          }
                        });
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: "E-mail",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          suffixIcon: IconButton(
                              onPressed: () {
                                emailController.clear();
                              },
                              icon: Icon(
                                Icons.cancel,
                                size: 20,
                                color: Colors.grey[400],
                              ))),
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                    ),
                  ],
                ),
              )),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Find e-mail",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Find password",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _isEmail == true
                            ? Colors.black87
                            : Colors.grey[300],
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: _isEmail == true
                            ? Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 15),
                              )
                            : Text(
                                "Enter your email address",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 15),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
