import 'package:flutter/material.dart';
import 'package:google_auth_withoutusing_firebase/userdetails.dart';

import 'Services/google_sign.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {
          signIn();
        }, child: Text("Sign In ")),
      ),
    );
  }
  Future signIn()async{
    final user=await GoogleSignInApi.login();
    if(user==null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign In Failed")));
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>UserDetails(user:user)));
    }
  }
}
