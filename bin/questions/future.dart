void main() {
  Future myFuture = Future(() {
    print("Going back to the future");
    return 22;
  }).then((value) => print("The value is $value"));

  print("Done with main");
}
