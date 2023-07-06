import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController unameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();

  String _message ='';

  final _formkey = GlobalKey();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Container(
        child: Form(
          key: _formkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: unameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'User email',
                  hintText: 'Enter email id',
                  icon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
                validator: (value){
                  if(value == null){
                    return "Username can't be empty";
                  }
                  return null;
                },

              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: pwdController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'User password',
                    hintText: 'Enter your password',
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
                validator: (value){
                  if(value == null){
                    return "Password can't be empty";
                  }
                  return null;
                },

              ),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  // ignore: deprecated_member_use
                  child: RaisedButton(onPressed: (){
                    if(_formkey != null) {
                      var uname = unameController.text;
                      var pwd = pwdController.text;
                      setState(() {
                        _message = "User name: $uname\nPassword : $pwd";
                      });
                    }
                  },
                  child: Text('Login'),
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_message),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
