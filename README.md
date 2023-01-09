<h1 align="center"> Dart: Aplicando Assíncronismo ⏳ </h1>

## ℹ️ Sobre

Conteúdo estudado durante o curso [Dart: aplicando assincronismo](https://cursos.alura.com.br/course/dart-aplicando-assincronismo), ensinado pelo instrutor [Kako (Caio Couto Moreira)](https://cursos.alura.com.br/user/kakomo2) na plataforma **[Alura](https://www.alura.com.br/)**.

## 📒 Conceitos importantes

> **Single Thread**: O Dart é uma linguagem síncrona, ou seja, _single thread_, portanto ele faz apenas uma tarefa por vez.

> **Isolate**: Conceito usado em Flutter que permite a concorrência de tarefas, ele é um espaço de memória na máquina que executa eventos em loop.

> **Assincronismo**: Excecução de tarefas enquanto se espera o término de algumas tarefas mais lentas e que normalmente dependem de algum dado externo.

## Future

> Exemplo de uso de Future:

```dart
void main() {
  Future myFuture = Future(() {
    print("Going back to the future");
    return 22;
  });

  print("Done with main");
}
```

Saída:

```
Done with main
Going back to the future
```

**Usando o `then`:**

```dart
void main() {
  Future myFuture = Future(() {
    print("Going back to the future");
    return 22;
  }).then((value) => print("The value is $value"));

  print("Done with main");
}
```

Saída:

```
Done with main
Going back to the future
The value is 22
```

> **Delayed** é usado para criar um período de espera no códido, exemplo:

```dart
Future.delayed(Duration(seconds: 5));
```

## Aluna e Desenvolvedora

| [<img src="https://avatars.githubusercontent.com/u/57508736?v=4" width=115><br><sub>Jhoisnáyra Vitória</sub>](https://github.com/jhoisz) |
| :--------------------------------------------------------------------------------------------------------------------------------------: |
