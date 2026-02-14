import 'package:flutter/material.dart';
import 'package:service_listing_app/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80.0),
              child: Text(
                "HireLoop",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 100.0,
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.transparent,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 30),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                      ],
                    ),
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
