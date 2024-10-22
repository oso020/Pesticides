import 'package:flutter/material.dart';
import 'package:pesticides/Features/register/presentation/pages/register_screen.dart';

import '../../Features/eng_owner_screen/presentation/pages/eng_owner_screen.dart';

class RoutesManger{
static Map<String,Widget Function(BuildContext)>route={
  routeNameRegister:(context)=> RegisterScreen(),
  routeNameEngOwnerScreen:(context)=> EngOwnerScreen(),
};

static const String routeNameRegister="register";
static const String routeNameEngOwnerScreen="EngOwnerScreen";
}


