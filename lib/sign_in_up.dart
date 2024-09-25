import 'package:flutter/material.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({super.key});

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Image.asset("assets/images/Americano.jpeg",fit: BoxFit.fill,),
            ),
            Positioned(
              bottom: 100,
              child: Row(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      const SignIn();
                    });
                  }, child: const Text("Sign In")),
                  TextButton(onPressed: (){}, child: const Text("Sign Up")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 300,
        color: Colors.transparent,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Email Address:",prefixIcon: Icon(Icons.email)),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Password:",prefixIcon: Icon(Icons.lock)),
            ),
            ElevatedButton(onPressed: (){}, child: const Text("Sign In")),
            TextButton(onPressed: (){}, child: const Text("Forget your Password")),
            const Row(
              children: [
                Divider(),
                Text("or"),
                Divider()
              ],
            ),
            const Row(
              children: [
                Icon(Icons.facebook),
                Icon(Icons.g_mobiledata)
              ],
            )
          ],
        ),
      ),
    );
  }
}
