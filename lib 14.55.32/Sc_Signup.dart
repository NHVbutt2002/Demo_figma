import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fromkey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                    ],
                  ),
                  Image.asset('assets/SC6.jpg'),
                  SizedBox(
                    height: 32,
                  ),
                  Text("Sign up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || !value.contains("@")) {
                                return 'Tên Đăng Nhập Sai';
                              } else if (value.contains(' ')) {
                                return 'Không chứa khoảng trắng';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (labelText) {},
                            controller: nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'E-mail',
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || !value.contains("@")) {
                                return 'Tên Đăng Nhập Sai';
                              } else if (value.contains(' ')) {
                                return 'Không chứa khoảng trắng';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (labelText) {},
                            controller: nameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null) {
                              return 'Hãy Điền Mật Khẩu';
                            } else if (value.length < 6) {
                              return "Mật Khẩu Quá Ngắn";
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                          controller: passwordController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.visibility_off_outlined)
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 12)),
                  Container(
                      height: 50,
                      width: 400,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Login',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          if (fromkey.currentState?.validate() == true) {
                            print('Hợp Lệ');
                          } else {
                            print('Không Hợp Lệ');
                          }
                          Navigator.of(context).pushNamed('/SC2');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffE3562A),
                        ),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/SC3');
                      //forgot password screen
                    },
                    child: const Text("Sign up",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff78746D))),
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
