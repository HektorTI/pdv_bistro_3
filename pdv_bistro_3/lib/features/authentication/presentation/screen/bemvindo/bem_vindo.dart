// ignore_for_file: file_names
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/color_schemes.dart';
import 'package:pdv_bistro_3/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/esqueceu%20senha/tela_esqueceu_senha.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/registrar/tela_registrar.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/seletor/tela_selecionar.dart';

class BemVindo extends StatefulWidget {
  const BemVindo({Key? key}) : super(key: key);

  @override
  State<BemVindo> createState() => _BemVindoState();
}

class _BemVindoState extends State<BemVindo> {
  bool _obascureText = true;
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Olá, seja bem-vindo(a)!',
                      style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Faça seu login',
                      style: Theme.of(context).textTheme.labelMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(), // Check for null and provide a default style
                      decoration: const InputDecoration(
                        labelText: 'CNPJ',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      style: Theme.of(context).textTheme.headlineMedium ?? const TextStyle(),
                      obscureText: _obascureText, // Use obscureText property
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        // ignore: prefer_const_constructors
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obascureText = !_obascureText; // Alterna a visibilidade da senha
                            });
                          },
                          child: Icon(
                            _obascureText ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const EsqueceuSenha()));
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              "Esqueceu sua senha?",
                              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                      // color: customColorScheme.primary,
                                      ) ??
                                  const TextStyle(
                                      // color: customColorScheme.onPrimaryFixedVariant,
                                      ),
                            ),
                          ),
                        ),
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
                            builder: (context) => const TelaSelecionar(),
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
