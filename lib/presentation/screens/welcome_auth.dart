import "package:flutter/material.dart";
import 'package:flutter_application_1/clientHttp.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Welcome extends StatefulWidget {
  final String? param;
  const Welcome({super.key, this.param});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String token = '';
  String mensaje = '';
  String uuid = '';

  @override
  void initState() {
    super.initState();
    String? param = widget.param;

    if (param != null) token = response.fromJson(json.decode(param)).token;
    verificarToken(token);
  }

  Future<void> verificarToken(String tokenString) async{
    Future<http.Response> consulta = clientHttp().VerifyAuth(tokenString);

    http.Response response = await consulta;

    if (response.statusCode == 200) {
      final responseBody = response.body;
      var res = json.decode(responseBody);
      setState(() {
        mensaje = "Login exitoso";
        uuid = res['children'][0]['uuid'];
      });
    } else {
      setState((){
        mensaje = "Algo salió mal";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text("Hola mundo :)"), Text(mensaje), Text(uuid)],
          ),
        ),
      ),
    );
  }
}

class response {
  final String token;

  response({required this.token});

  factory response.fromJson(Map<String, dynamic> json) {
    return response(token: json['token']);
  }
}
