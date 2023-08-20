import 'package:flutter/material.dart';
import 'package:lmao_noob/utils/neumorphic_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo of app
            const Spacer(
              flex: 2,
            ),
            NeumorphicContainer(
              enableTapAnimation: false,
              radius: 100,
              height: 150,
              width: 150,
              child: const Icon(
                Icons.lock,
                size: 80,
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // username field

            NeumorphicContainer(
              enableTapAnimation: false,
              radius: 15,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                cursorColor: Colors.grey.shade900,
                cursorHeight: 22,
                cursorWidth: 2,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Colors.grey[900],
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      // color: Colors.white,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
            ),

            // username and password
            const SizedBox(
              height: 20,
            ),

            // password field

            NeumorphicContainer(
              enableTapAnimation: false,
              radius: 15,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                obscureText: true,
                cursorColor: Colors.grey.shade900,
                cursorHeight: 22,
                // cursorWidth: 2,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey[900]),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        // color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NeumorphicContainer(
                  enableTapAnimation: true,
                  radius: 10,
                  height: 30,
                  width: 140,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            // login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: NeumorphicContainer(
                enableTapAnimation: true,
                radius: 15,
                alignment: Alignment.center,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an Account ? '),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
