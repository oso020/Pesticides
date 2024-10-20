import 'package:flutter/material.dart';
import 'package:pesticides/Features/register/presentation/pages/register_screen.dart';

class RoutesManger{
static Map<String,Widget Function(BuildContext)>route={
  routeNameRegister:(context)=> RegisterScreen(),
};

static const String routeNameRegister="register";
}


