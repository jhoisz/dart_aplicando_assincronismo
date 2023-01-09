void main() async {
  //Exemplo 01
  Future myFuture = Future(() {
    print("Going back to the future");
    return 22;
  }).then((value) => print("The value is $value"));

  Future.delayed(Duration(seconds: 5));

  //Exemplo 02
  Future<int> myFutureFunc() async {
    print("I have a function in the future");
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12;
  }

  myFutureFunc()
      .then((value) => print("My function value is $value"))
      .onError((error, stackTrace) => print("An error ocurred"))
      .whenComplete(() => print("The Future is Over"));

  //Exemplo 03
  Future<int?> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print("I have a functional Function");
      await Future.delayed(Duration(seconds: 5));
      return 44;
    } catch (e) {
      print("An error ocurred: $e");
    } finally {
      print("The future is finally over");
    }
    return null;
  }

  myFutureErrorFunc(1, 2).then(
    (value) {
      print("the value is: $value");
    },
  );

  print("Done with main");

  //Desafio CHAT
  print("João: Bom dia, grupo!");
  await Future.delayed(Duration(seconds: 2));
  print("Mariana: Bom dia! Tudo bem?");
  await Future.delayed(Duration(seconds: 2));
  print("João: Suave, e vc?");
  await Future.delayed(Duration(seconds: 2));
  print("Mariana: Certinho.");
  await Future.delayed(Duration(seconds: 2));
}
