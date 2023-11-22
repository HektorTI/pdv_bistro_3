import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/color_schemes.dart';
import 'package:pdv_bistro_3/core/widgets/custom_app_bar.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/bemvindo/bem_vindo.dart';

class TelaSelecionar extends StatefulWidget {
  const TelaSelecionar({super.key});

  @override
  State<TelaSelecionar> createState() => _TelaSelecionarState();
}

class _TelaSelecionarState extends State<TelaSelecionar> {
  bool _obscureText = true;
  String _password = '';
  String? _selectedOperation;

  IconButton buildVisibilityIcon() {
    return IconButton(
      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    );
  }

  List<String> listaUsuario = ["Garçom", "Supervisor", "Atendende", "Administrador"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 720,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                width: 1.0,
                                color: ColorSchemes.darkColorScheme.surfaceVariant,
                              ),
                            ),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 11.0),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: ColorSchemes.darkColorScheme.surfaceVariant,
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: ColorSchemes.darkColorScheme.surfaceVariant,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              style: Theme.of(context).textTheme.headlineMedium,
                              value: _selectedOperation,
                              items: listaUsuario.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedOperation = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                width: 1.0,
                                color: ColorSchemes.darkColorScheme.surfaceVariant,
                              ),
                            ),
                            child: TextFormField(
                              controller: TextEditingController(text: _password),
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                suffixIcon: buildVisibilityIcon(),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: ColorSchemes.darkColorScheme.surfaceVariant,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: ColorSchemes.darkColorScheme.surfaceVariant,
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: ColorSchemes.darkColorScheme.surfaceVariant,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              obscureText: _obscureText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 12.0,
                            children: List.generate(
                              9,
                              (index) => buildNumberButton('${index + 1}'),
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          SizedBox(
                            height: 100,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 120,
                                  height: 100,
                                  child: buildSpecialButton('Voltar'),
                                ),
                                const SizedBox(width: 12.0),
                                Expanded(
                                  flex: 2,
                                  child: buildSpecialButton('Enter'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  // const SizedBox(height: 10), // Espaçamento entre o ícone e o texto

                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: GestureDetector(
                                      onTap: () {
                                        // Adicione a ação desejada ao ícone do usuário aqui
                                      },
                                      child: const Icon(Icons.person_add_alt_sharp, color: Color.fromARGB(255, 151, 37, 37)), // Altere a cor conforme necessário
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaAplicativo()));
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: Text(
                                          'Gerar Licença',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                color: ColorSchemes.darkColorScheme.outline,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minWidth: 40,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const BemVindo(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "Cancelar",
                                    style: TextStyle(
                                      color: ColorSchemes.darkColorScheme.surfaceVariant,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              MaterialButton(
                                color: ColorSchemes.darkColorScheme.outline,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minWidth: 120,
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha à esquerda e à direita
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.live_help_outlined, color: Colors.grey, size: 16), // Ícone
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaAplicativo()));
                                      },
                                      child: const MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: Text(
                                          'Ajuda?',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Copyright © 2.018 - Softcom Informática.',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'R: Toshinobu Katayama, 63 A - Kd Camaru',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '79.806-030 - Dourados - MS (67) 3423-8233',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
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
    );
  }

  Widget buildNumberButton(String label) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          setState(() {
            _password += label;
          });
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          child: Text(label),
        ),
      ),
    );
  }

  Widget buildSpecialButton(String label) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      color: label == 'Enter' ? const Color.fromARGB(255, 165, 36, 27) : null,
      child: InkWell(
        onTap: () {
          if (label == 'Voltar') {
            setState(() {
              if (_password.isNotEmpty) {
                _password = _password.substring(0, _password.length - 1);
              }
            });
          } else if (label == 'Enter') {
            // Action for 'Enter' button
          }
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 50,
          width: label == 'Enter' ? 106 * 2 + 8 : 50,
          alignment: Alignment.center,
          child: label == 'Enter'
              ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text(
                        label,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              : Text(label),
        ),
      ),
    );
  }
}
