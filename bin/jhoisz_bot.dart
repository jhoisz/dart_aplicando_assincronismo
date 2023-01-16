import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String jhoiszBot = 'jhoiszBot:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().jhoiszStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('                        jhoiszBOT is activated for $event seconds.');
  }, onDone: () {
    print('jhoiszBOT is finishing its work, ask the last question.');
    a = false;
  });

  print('-- Iniciando o jhoiszBot, aguarde..--');

  await BotClock().clock(2);

  print('jhoiszBot:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);

    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(jhoiszBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
      await BotClock().clock(2);
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(jhoiszBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(jhoiszBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);
  print('--Encerrando jhoiszBot--');
}
