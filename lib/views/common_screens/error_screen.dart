import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorScreen extends StatefulWidget {
  final VoidCallback onBack;
  const ErrorScreen({required this.onBack, super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
    //   body:
       SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.95,
                child: SvgPicture.asset("assets/images/errorPage404.svg"),// height: 200, width: 100,),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "Your page didn't respond",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "This page doesn't exist or may be fall asleep!\nWe suggest you go back to home",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              InkResponse(
                onTap: (){
                  widget.onBack.call();
                  // Navigator.pop(context);
                  },
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.black),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: Text(
                    "Back Home",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      // ),
    );
  }
}
