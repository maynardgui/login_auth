import 'package:flutter/material.dart';
import 'package:login_auth/componets/my_button.dart';
import 'package:login_auth/componets/my_textfild.dart';
import 'package:login_auth/componets/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  get horizontal => null;

  void entrar() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 40,
                ),

                //Bem-vindo
                Text(
                  'Bem-vindo, novamente',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 25),
                //password testfild
                MyTextFild(
                  controller: usernameController,
                  hintText: 'Usuario',
                  obscuretext: false,
                ),
                const SizedBox(height: 10),
                //password testfild
                MyTextFild(
                  controller: passwordController,
                  hintText: 'Senha',
                  obscuretext: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 20),
                //esqueceu a senha?
                Text('Esqueceu a Senha?',
                    style: TextStyle(color: Colors.grey[600])),

                const SizedBox(height: 25),
                //sign in button
                MyButton(
                  onTap: entrar,
                ),
                const SizedBox(height: 40),
                //ou continue com
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Ou Entrar com',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                //google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(imagePath: 'lib/images/google.png'),
                    SizedBox(width: 25),
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),
                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não esta Registrado?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Registrarse agora',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
                //Não esta registrado, registrarse
              ],
            ),
          ),
        ));
  }
}
