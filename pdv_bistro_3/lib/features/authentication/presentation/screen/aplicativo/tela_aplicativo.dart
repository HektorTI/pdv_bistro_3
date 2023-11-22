import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro_3/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/registrar/tela_registrar.dart';

class TelaAplicativo extends StatelessWidget {
  const TelaAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 550,
            height: 550,
            child: Card(
              // color: const Color.fromARGB(255, 225, 227, 227),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Futura tela do aplicativo PDV',
                      style: Theme.of(context).textTheme.titleMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Tela em branco',
                      style: Theme.of(context).textTheme.labelMedium ?? const TextStyle(), // Check for null and provide a default style
                    ),
                    const SizedBox(height: 50),
                    Container(
                      padding: const EdgeInsets.only(top: 350),
                      child: RichText(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        icons: const [
          Icons.delivery_dining,
          Icons.local_dining,
          Icons.chat_bubble,
          Icons.store,
          // Adicione outros ícones, se necessário
        ],
        labels: const [
          "Delivery",
          "Mesas",
          "WhatsApp",
          "Balcão",
        ],
        onPressed: [
          () {
            // Ação para delivery
          },
          () {
            // Ação para mesas
          },
          () {
            // Ação para WhatsApp
          },
          () {
            // Ação para balcão
          },
        ],
      ),
    );
  }
}
