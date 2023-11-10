// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/resources/authmethods.dart';
import 'package:mental_health/resources/dbmethods.dart';
import 'package:mental_health/screens/auth/login_screen.dart';
import 'package:mental_health/screens/questioner/questioner.dart';
import 'package:mental_health/screens/volunteering/create_activity.dart';
import 'package:mental_health/widgets/textfiled.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController age = TextEditingController();
  void signup() async {
    String res = await Authmethods().signup(
        email: email.text,
        password: password.text,
        name: name.text,
        age: age.text);
    var ag = await DBMethods().getUserAge();
    if (res == "success") {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Signup successfully')));
      const Duration(milliseconds: 500);
      if (FirebaseAuth.instance.currentUser!.email == 'sponser@gmail.com') {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const CreateActivity();
        }));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return Questioner(
            age: int.parse(ag),
          );
        }));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 20,
            child: Container(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Sign Up',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(hint: 'Name', controller: name),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(
                hint: 'age',
                controller: age,
                keybordType: TextInputType.number),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(hint: 'email address', controller: email),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(
              hint: 'Password',
              controller: password,
              isPassword: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: InkWell(
              onTap: () => signup(),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(26, 0, 0, 0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                child: const Center(
                    child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child:
                    const Text("Login", style: TextStyle(color: Colors.blue)),
              )
            ],
          ),
          Flexible(
            flex: 24,
            child: Container(),
          )
        ],
      ),
    ));
  }
}
