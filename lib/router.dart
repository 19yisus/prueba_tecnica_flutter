import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/presentation/screens/welcome_auth.dart';
import 'presentation/screens/login_screen.dart';

final GoRouter router_config = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder:(BuildContext context ,GoRouterState state){
        return const Login_screen();
      },
    ),
    GoRoute(
      path: '/welcome/:responseBody',
      builder: (BuildContext context, GoRouterState state){
        return Welcome(param: state.pathParameters['responseBody']);
      }
    )
  ]
);