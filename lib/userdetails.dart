import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserDetails extends StatefulWidget {
  final GoogleSignInAccount user;

  const UserDetails({Key? key, required this.user}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(widget.user.photoUrl.toString()),
          ),SizedBox(height: 15,),
          Text('Name : ${widget.user.displayName}'),
          SizedBox(height: 15,),
          Text('Email : ${widget.user.email}')
        ],
      ),
    );
  }
}
