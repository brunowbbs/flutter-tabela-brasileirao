import 'package:app_context/controllers/home_controller.dart';
import 'package:app_context/models/time.dart';
import 'package:app_context/pages/time_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brasileirão"),
      ),
      body: ListView.separated(
        itemCount: controller.tabela.length,
        itemBuilder: (BuildContext context, int index) {
          final List<Time> tabela = controller.tabela;

          return ListTile(
            leading: Image.network(tabela[index].brasao),
            title: Text(tabela[index].nome),
            trailing: Text(
              tabela[index].pontos.toString(),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TimePage(
                    key: Key(tabela[index].nome),
                    time: tabela[index],
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
