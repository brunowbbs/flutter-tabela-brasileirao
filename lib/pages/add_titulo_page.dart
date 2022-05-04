import 'package:app_context/models/time.dart';
import 'package:app_context/models/titulo.dart';
import 'package:flutter/material.dart';

class AddTituloPage extends StatefulWidget {
  final Time time;
  final ValueChanged<Titulo> onSave;

  const AddTituloPage({
    Key? key,
    required this.time,
    required this.onSave,
  }) : super(key: key);

  @override
  State<AddTituloPage> createState() => _AddTituloPageState();
}

class _AddTituloPageState extends State<AddTituloPage> {
  final _campeonato = TextEditingController();
  final _ano = TextEditingController();

  final _formKey = GlobalKey<FormState>(); //Criando chave única

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adicionar título"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextFormField(
                controller: _ano,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ano",
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Informe o ano do título';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: TextFormField(
                controller: _campeonato,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Campeonato",
                ),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Informe o campeonato';
                  }
                  return null;
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onSave(
                        Titulo(ano: _ano.text, campeonato: _campeonato.text),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        child: Text(
                          "Salvar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
