void main(){
  print(greetEveryone());
  print("Suma: ${addTwoNumbers(10, 20)}" );
  print("Suma: ${addTwoNumbers2(10, 20)}" );
  print(greetPerson(name: "Pablo", message: "Hi"));
}

String greetEveryone(){
  return "Hello everyone";
}
String greetEveryone2() => "Hello everyone!";

int addTwoNumbers(int a,int b){
  return a+b;
}
int addTwoNumbers2(int a, int b) => a+b;

 //[int? b] para ser opcional
int addTwoNumbersOptional(int a,[ int b = 0]){
  //b=b ?? 0;
  //a ??= 3;
  return a+b;
}

String greetPerson({required name, String message = "hola"}){
  return "Hola, Pablo";
}