import 'package:responsi_/controllers/controller_valorant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:responsi_/screens/login_screen.dart';
import 'package:responsi_/utilities/auth_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthManager _authManager = AuthManager();

  Future<void> _logout(BuildContext context) async {
    await _authManager.logout();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        shadowColor: Colors.grey[850],
        title: const Text('Valorant Agent'),
        actions: [
          IconButton(
            onPressed: () {
              _logout(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: GetBuilder<ValorantController>(
        builder: (agenteController) {
          return (agenteController.cargando == true)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: agenteController.listAgentes.length,
                  itemBuilder: (context, i) {
                    final agente = agenteController.listAgentes[i];

                    return ListTile(
                      onTap: () {
                        agenteController.agente = agente;
                        Navigator.pushNamed(context, '/detail/agent');
                      },
                      title: Text(agente.displayName!),
                      leading: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.black,
                                  spreadRadius: 1)
                            ]),
                        child: CircleAvatar(
                          backgroundImage: agente.img != null
                              ? NetworkImage(agente.img!)
                              : const AssetImage('./assets/images/logov.png')
                                  as ImageProvider,
                          backgroundColor: Colors.white,
                          radius: 25,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    );
                  });
        },
      ),
    );
  }
}
