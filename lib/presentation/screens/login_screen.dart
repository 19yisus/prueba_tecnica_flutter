import "package:flutter/material.dart";
import 'package:flutter_application_1/clientHttp.dart';
import 'package:flutter_application_1/presentation/widgets/CustomWidgets.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _login_screen();
}

class _login_screen extends State<Login_screen> {
  String username = "";
  String password = "";
  String resultado = "";

  void SendLogin(BuildContext context) async {
    Map<String, String> body = {"user_name": username, "user_pass": password};

    Future<http.Response> consulta = clientHttp().makePostRequest(
      "http://adempiere.erpcya.com:1174/api/security/login",
      body
    );

    http.Response response = await consulta;

    if (response.statusCode == 200) {
      final responseBody = response.body;
      setState(() {
        resultado = "Login exitoso";
        context.push("/welcome/$responseBody");
      });

      return;
    }

    setState(() {
      resultado = "Credenciales erroneas";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(resultado),
          ),
          const Text(
            "Login",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Form(
              child: Column(
            children: [
              inputText(
                  labelText: "Username",
                  onChange: (val) => {
                        setState(() {
                          username = val;
                        })
                      }),
              inputText(
                  labelText: "Password",
                  onChange: (val) => {
                        setState(() {
                          password = val;
                        })
                      }),
              buttonCustom(
                  textButton: "Iniciar Sesion",
                  onPresed: () {
                    if (username != "" && password != "") {
                      setState(() {
                        resultado = "datos completos";
                      });

                      SendLogin(context);
                    } else {
                      setState(() {
                        resultado = "datos incompletos";
                      });
                    }
                  }),
            ],
          ))
        ],
      )),
    ));
  }
}
