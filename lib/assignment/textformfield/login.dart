import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var email = TextEditingController();
  var password = TextEditingController();
  var dob = TextEditingController();
  var gender = TextEditingController();
  var country = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Create your '
                  'Account',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: dob,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            labelText: 'Date of birth',
                            labelStyle: const TextStyle(color: Colors.black),
                            hintText: 'Date of birth',
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextFormField(
                        controller: gender,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            labelText: 'Gender',
                            labelStyle: const TextStyle(color: Colors.black),
                            hintText: 'Gender',
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                TextFormField(
                  controller: country,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red)),
                      labelText: 'Country',
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: 'Country',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(height: 18),
                Container(
                    alignment: Alignment.center,
                    child: const Text('SIGN UP',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30))),
                const SizedBox(height: 18),
                const Text(
                  'OR',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 18),
                Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            child: const Image(
                                image:
                                    AssetImage('assets/images/facebook.png'))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Login with Google',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                const SizedBox(height: 18),
                Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            child: const Image(
                                image: AssetImage('assets/images/google.png'))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Login with Google',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                const SizedBox(height: 18),
                Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            child: const Image(
                                image: AssetImage(
                                    'assets/images/apple-logo.png'))),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Login with Apple',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      ' Log In',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
