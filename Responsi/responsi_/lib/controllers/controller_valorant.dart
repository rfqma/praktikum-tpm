import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:responsi_/api/api_valorant.dart';
import 'package:responsi_/models/model_valorant.dart';
import 'package:get/get.dart';

class ValorantController extends GetxController {
  @override
  ValorantController() {
    obtenerPersonaje();
  }

  List<ValorantModel> listAgentes = [];
  List<ValorantModel> agentesSearch = [];
  late ValorantModel agente;
  bool cargando = true;

  final api = Get.find<ApiHttp>();

  Future obtenerPersonaje() async {
    cargando = true;
    update();
    final response =
        await api.httpGet(url: 'https://valorant-api.com/v1/agents/');
    final responseList = response.body['data'];
    final listAgenteModel = List<ValorantModel>.from(
      responseList.map(
        (agente) => ValorantModel.fromJsomMap(agente),
      ),
    );

    listAgentes.addAll(listAgenteModel);
    cargando = false;
    update();
  }

  Future buscarAgentes(String query) async {
    agentesSearch = [];
    String queryAG = query.toLowerCase();
    for (var agente in listAgentes) {
      if (agente.displayName!.toLowerCase().contains(queryAG)) {
        agentesSearch.add(agente);
      }
    }
    update();
  }
}
