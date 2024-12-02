import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Container(
        alignment: Alignment.center,
        width: ScaleFactor.scaleValue(context, 850),
        height: ScaleFactor.scaleValue(context, 600),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(ScaleFactor.scaleValue(context, 30)))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: ScaleFactor.scaleValue(context, 850),
              height: ScaleFactor.scaleValue(context, 350),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    width: ScaleFactor.scaleValue(context, 850),
                    height: ScaleFactor.scaleValue(context, 170),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ScaleFactor.scaleValue(context, 5)))),
                            child: TextField(
                              controller: mailController,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: ScaleFactor.scaleValue(context, 50)
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.person),
                                hintText: "Email"
                              ),
                            ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: ScaleFactor.scaleValue(context, 650),
                    height: ScaleFactor.scaleValue(context, 5),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ScaleFactor.scaleValue(context, 5)))),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    width: ScaleFactor.scaleValue(context, 850),
                    height: ScaleFactor.scaleValue(context, 170),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(
                            ScaleFactor.scaleValue(context, 5)))),
                            child: TextField(
                              controller: passwordController,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: ScaleFactor.scaleValue(context, 50)
                                
                              ),
                              decoration: InputDecoration(
                                
                                border: InputBorder.none,
                                icon: Icon(Icons.lock),
                                hintText: "Password"
                              ),
                            ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint(mailController.text);
              },
              child: Container(
                alignment: Alignment.center,
                width: ScaleFactor.scaleValue(context, 850),
                height: ScaleFactor.scaleValue(context, 175),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                        Radius.circular(ScaleFactor.scaleValue(context, 5)))),

                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: ScaleFactor.scaleValue(context, 60),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ScaleFactor {
  double scaleFactor = 1920;

  static double scaleValue(BuildContext context, double a) {
    return a / 1920 * MediaQuery.of(context).size.height;
  }
}
