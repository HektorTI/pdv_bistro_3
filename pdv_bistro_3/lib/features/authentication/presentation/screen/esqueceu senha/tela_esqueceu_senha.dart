import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/color_schemes.dart';
import 'package:pdv_bistro_3/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/registrar/tela_registrar.dart';

class EsqueceuSenha extends StatelessWidget {
  const EsqueceuSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 450,
            height: 450,
            child: Card(
              // color: const Color.fromARGB(255, 225, 227, 227),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Esqueceu sua senha?',
                      style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ' Não se preucupe. Vamos redefnir.',
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Confirme o email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      color: ColorSchemes.darkColorScheme.outline,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minWidth: 300,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaAplicativo(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: ColorSchemes.darkColorScheme.surfaceVariant,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Nao tem uma conta? ',
                            style: Theme.of(context).textTheme.headlineLarge ?? const TextStyle(), // Check for null and provide a default style
                          ),
                          TextSpan(
                            text: 'Registre-se Agora',
                            style: Theme.of(context).textTheme.headlineLarge?.merge(
                                  const TextStyle(
                                      // decoration: TextDecoration.underline,
                                      // color: customColorScheme.primary,
                                      ),
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Ação ao tocar em "Registrar"
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TelaRegsitrar(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
