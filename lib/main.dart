import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Basic Widget")),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Sign In",
                textDirection: TextDirection.rtl,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Username"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Remember Me"),
                    Text("Forgot Password"),
                  ]),
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
