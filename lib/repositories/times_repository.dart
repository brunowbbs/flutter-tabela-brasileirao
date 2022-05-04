import 'package:app_context/models/time.dart';
import 'package:app_context/models/titulo.dart';
import 'package:flutter/material.dart';

class TimesRepository {
  final List<Time> _times = [];

  get times => _times;

  void addTitulo({required Time time, required Titulo titulo}) {
    time.titulos.add(titulo);
  }

  TimesRepository() {
    _times.addAll(
      [
        Time(
          nome: 'Flamengo',
          pontos: 71,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/flamengo.png',
          cor: Colors.red,
        ),
        Time(
          nome: 'Internacional',
          pontos: 69,
          brasao:
              'https://e.imguol.com/futebol/brasoes/40x40/internacional.png',
          cor: Colors.red,
        ),
        Time(
          nome: 'Atlético-MG',
          pontos: 65,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/atletico-mg.png',
          cor: Colors.black,
        ),
        Time(
          nome: 'Cruzeiro',
          pontos: 62,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/cruzeiro.png',
          cor: Colors.blue,
        ),
        Time(
          nome: 'São Paulo',
          pontos: 61,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/sao-paulo.png',
          cor: Colors.red,
        ),
        Time(
          nome: 'Grêmio',
          pontos: 55,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/gremio.png',
          cor: Colors.blue,
        ),
        Time(
          nome: 'Palmeiras',
          pontos: 52,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/palmeiras.png',
          cor: Colors.green,
        ),
        Time(
          nome: 'Corinthians',
          pontos: 50,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/corinthians.png',
          cor: Colors.red,
        ),
        Time(
          nome: 'Bragantino',
          pontos: 45,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/bragantino.png',
          cor: Colors.black,
        ),
        Time(
          nome: 'Botafogo',
          pontos: 42,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/botafogo.png',
          cor: Colors.black,
        ),
        Time(
          nome: 'Santos',
          pontos: 39,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/santos.png',
          cor: Colors.black,
        ),
        Time(
          nome: 'Goias',
          pontos: 39,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/goias.png',
          cor: Colors.green,
        ),
        Time(
          nome: 'Coritiba',
          pontos: 37,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/coritiba.png',
          cor: Colors.green,
        ),
        Time(
          nome: 'Fortaleza',
          pontos: 37,
          brasao: 'https://e.imguol.com/futebol/brasoes/40x40/fortaleza.png',
          cor: Colors.blue,
        )
      ],
    );
  }
}
