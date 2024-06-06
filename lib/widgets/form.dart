// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  //------------------------Functions ------------------

  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Align(alignment: Alignment.centerLeft, child: Text('Form')),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: 'Enter  First Name'),
                      key: ValueKey('firstname'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "First Name should not be empty";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        firstname = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter  Last Name'),
                      key: ValueKey('lastname'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Last Name should not be empty";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        lastname = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter Your Email'),
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Email should not be empty";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email = value.toString();
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration:
                          InputDecoration(hintText: 'Enter The Password'),
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value.toString().length <= 5) {
                          return "Minimum Length of Password should be 6";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        password = value.toString();
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          trysubmit();
                        },
                        child: Text('Submit'))
                  ],
                )),
          ),
        ));
  }
}
