import 'dart:developer';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //===============Declare Variable===========================================//
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _userNameValidate = false;
  bool _passwordValidate = false;
  final _focusNode = FocusNode();
  int _counter = 0;
//======================Counter Login Failed==================================//
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

//======================Function Login======================================//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        centerTitle: true,
        title: const Text('Welcome to Page Login'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //==========================Button and Image==================//
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxMS7sO1i6YUBEHDX6Rd43fSmuQ6OfCiTbwQ&usqp=CAU',
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //========================TextFormField======================//
                _getTextFormField(
                  // hintText: '',
                  iconField: Icons.person,
                  labelText: 'Username',
                  controller: _userNameController,
                  hide: false,
                  textInputType: TextInputType.text,
                  errorText:
                      _userNameValidate ? 'Username cannot be null.!' : null,
                  focusNode: _userNameValidate ? _focusNode : null,
                ),
                _getTextFormField(
                  // hintText: '',
                  iconField: Icons.vpn_key,
                  labelText: 'Password',
                  controller: _passwordController,
                  hide: true,
                  textInputType: TextInputType.text,
                  focusNode: _passwordValidate ? _focusNode : null,
                  errorText:
                      _passwordValidate ? 'Password cannot be null.!' : null,
                ),
                const SizedBox(
                  height: 25,
                ),
                //=====================Button=================================//
                TextButton(
                  onPressed: () {
                    setState(() {
                      _userNameController.text = '';
                      _passwordController.text = '';
                      _passwordValidate = false;
                      _userNameValidate = false;
                    });
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                _getButton(
                  label: 'Sign In',
                  onPressed: () {
                    setState(() {
                      //===============Validate==============================//
                      bool response = getLogin();
                      if (response == false) {
                        response;
                      } else {
                        //=============Check Condition==========================//
                        if (_userNameController.text == 'ppc' &&
                            _passwordController.text == '123') {
                          Navigator.pushReplacementNamed(context, '/ppc-bank');
                          log('Username login is: ${_userNameController.text}');
                        } else if (_userNameController.text == 'wing' &&
                            _passwordController.text == '123') {
                          Navigator.pushReplacementNamed(context, '/wing-bank');
                          log('Username login is: ${_userNameController.text}');
                        } else if (_userNameController.text == 'telegram' &&
                            _passwordController.text == '123') {
                          Navigator.pushReplacementNamed(context, '/telegram');
                          log('Username login is: ${_userNameController.text}');
                        } else {
                          _incrementCounter();
                          showAlertDialog(context);
                          log('Username login is: ${_userNameController.text}');
                        }
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//========================Function Login=====================================//
  bool getLogin() {
    var isValid = true;
    if (_userNameController.text.isEmpty) {
      _userNameValidate = true;
      _focusNode.requestFocus();
      isValid = false;
    } else {
      _userNameValidate = false;
      if (_passwordController.text.isEmpty) {
        _passwordValidate = true;
        _focusNode.requestFocus();
        isValid = false;
      } else {
        _passwordValidate = false;
      }
    }
    return isValid;
  }

  //====================Widget TextFormField==================================//
  Widget _getTextFormField(
      {
      // required String hintText,
      required String? labelText,
      TextInputType? textInputType = TextInputType.name,
      required TextEditingController controller,
      FocusNode? focusNode,
      required IconData iconField,
      required bool hide,
      String? errorText}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: hide,
        keyboardType: textInputType,
        decoration: InputDecoration(
          // hintText: hintText,
          icon: Icon(
            iconField,
            color: Colors.black,
            size: 50,
          ),
          labelText: 'Please Enter $labelText',
          errorText: errorText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ),
    );
  }

  //==================Widget Button===========================================//
  Widget _getButton(
      {required String label, required void Function()? onPressed}) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.white,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.login),
        label: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
    );
  }

  //===========================Alert Message==================================//
  showAlertDialog(BuildContext context) {
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Invalid Username or Password ($_counter)",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      content: const Text(
        "The Username and Password not match..!",
        style: TextStyle(color: Colors.redAccent),
      ),
      actions: [
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
