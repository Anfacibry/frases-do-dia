import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter/rendering.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frase = [
    "Todo mundo espera alguma coisa de um sábado à noite. Eu espero você.",
    "Amo como ama o amor. Não conheço nenhuma outra razão para amar senão amar. Que queres que te diga, além de que te amo, se o que quero dizer-te é que te amo?",
    "Era como se dissesse, sem dizer, “eu sei que já faz tempo, mas ainda amo você”.",
    "Todo mundo espera alguma coisa de um sábado à noite. Eu espero você.",
    "— E se não der certo?\n" + "— A gente vai tentando até acertar.",
    "O que sinto hoje, veio de você e será eternamente por você!",
    "Vida é brisa passageira, então faça valer a pena.",
    "Eu amo você, menina...\n" + "Amo você...",
    "O verdadeiro amor nunca se desgasta. Quanto mais se dá mais se tem.",
    "Duvida da luz dos astros," +
        "De que o sol tenha calor," +
        "Duvida até da verdade," +
        "Mas confia em meu amor.",
    "Você nunca sabe quanto tempo você tem com alguém, então não esqueça de dizer eu te amo enquanto você pode.",
    "Eu amo você \n" +
        "E não me importa o que vão dizer.\n" +
        "Eu quero só você",
    "Agora você sabe... ninguém nunca amou alguém como eu amo você...",
    "Não há nada mais motivador do que um amor verdadeiro.",
    "O perdão não deve ser usado muitas vezes, senão a desculpa se transforma em um motivador de erros quando deveria significar um arrependimento sincero.",
    "Eu não amo você por ser minha cara metade, amo porque sem você eu não sou nada.",
    "Nada mais lindo, nada mais encantador, que os teus lábios sorrindo, depois de um beijo de amor.",
    "O jeito como eu sinto por você nunca vai mudar. É claro que eu te amo - e não há nada que você possa fazer pra mudar isso!",
    "Pra sempre é muito tempo. Eu te amo é muita coisa. E mudar de ideia é normal.",
    "Eu te amo não pelo que você é, mas pelo que sou quando estou com você!",
    "O problema é que eu te amo. Não tenho dúvidas que com você daria certo.",
    "Te amo sem saber como, nem quando, nem onde, te amo diretamente sem problemas nem orgulho: assim te amo porque não sei amar de outra maneira.",
    "Mas eu amo você. Só queria terminar dizendo isso. Eu amo você. De verdade.",
    "Vou me enganar mais uma vez, fingindo que te amo às vezes, como se não te amasse sempre.",
    "O que a memória ama, fica eterno. Te amo com a memória, imperecível.",
    "Às vezes nem me preocupo tanto comigo... Mas há pessoas que amo e não quero vê-las sofrer.",
    "Meu amor,a vida passa num instante. E um instante é muito pouco pra sonhar."
  ];

  var _imagens = [
    "images/sedutor.png",
    "images/mensagem.png",
    "images/flecha.png",
    "images/play.png",
    "images/abraco.png",
    "images/colo.png",
    "images/selfie.png",
    "images/casados.png",
    "images/casal.png",
    "images/sedutor.png",
    "images/abraco.png",
    "images/flecha.png",
    "images/casal.png",
    "images/apaixonados.png",
    "images/indignado.png",
    "images/casal.png",
    "images/feliz.png",
    "images/caixa.png",
    "images/pasmo.png",
    "images/flecha.png",
    "images/surpreso.png",
    "images/abraco.png",
    "images/casados.png",
    "images/sedutor.png",
    "images/caixa.png",
    "images/mensagem.png",
    "images/casal.png",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  var _imagenGerada = "images/clique.png";

  void _gerarFrase() {
    var _numeroSorteado = Random().nextInt(_frase.length);

    setState(() {
      _fraseGerada = _frase[_numeroSorteado];
      _imagenGerada = _imagens[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink[400],
          title: Text("Frases românticas"),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            color: Colors.pink[100],
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  _imagenGerada,
                  height: 220,
                  width: 220,
                ),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: [
                        Shadow(color: Colors.pink[800], blurRadius: 10)
                      ]),
                ),
                RaisedButton(
                    color: Colors.pink[400],
                    child: Text(
                      "Nova frase",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: _gerarFrase)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
        ));
  }
}
