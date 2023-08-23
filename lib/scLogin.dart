import 'package:flutter/material.dart';

class ScLogin extends StatefulWidget {
  const ScLogin({Key? key}) : super(key: key);

  @override
  State<ScLogin> createState() => _ScLoginState();
}

class _ScLoginState extends State<ScLogin> {
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
              padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
              child: Column(
                children: [
                  Image.asset('assets/Sc4.png'),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    "Log in",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Login with social networks",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Row(
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
                              labelText: 'Email',
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
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home2Screen');
                      //forgot password screen
                    },
                    child: const Text('Forgot Password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      height: 50,
                      width: 400,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          if (fromkey.currentState?.validate() == true) {
                            print('Hợp Lệ');
                          } else {
                            print('Không Hợp Lệ');
                          }
                          Navigator.of(context).pushNamed('/Profile');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffE3562A),
                        ),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/SignUp');
                      //forgot password screen
                    },
                    child: const Text("Sign up",
                        style: TextStyle(
                            color: Color(0xff78746D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
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
