import 'package:responsi_/controllers/controller_valorant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  final agenteController = Get.find<ValorantController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(agenteController.agente.displayName!),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('./assets/images/fondo.png'),
              ),
            ),
          ),
          Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: agenteController.agente.imgBack != null
                    ? NetworkImage(agenteController.agente.imgBack!)
                    : const AssetImage('./assets/images/valorant')
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: agenteController.agente.img != null
                      ? NetworkImage(agenteController.agente.img!)
                      : const AssetImage('./assets/images/valorant.png')
                          as ImageProvider),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 160),
                  width: 320,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(1),
                            spreadRadius: 16,
                            blurRadius: 10)
                      ]),
                  child: agenteController.agente.description != null
                      ? Text(
                          agenteController.agente.description!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                              letterSpacing: 1.1),
                        )
                      : const Text('No description'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Abilities',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
          GridView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 450),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: agenteController.agente.abilities!
                          .map(
                            (ablilityImg) => Row(
                              children: [
                                Column(
                                  children: [
                                    Image.network(
                                      ablilityImg != 'null'
                                          ? ablilityImg['displayIcon']
                                          : const AssetImage(
                                                  './assets/images/logov.png')
                                              as ImageProvider,
                                      scale: 3,
                                    ),
                                    Text(
                                      ablilityImg['displayName'],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
