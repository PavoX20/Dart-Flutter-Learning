void main(){
  emitNumbers().listen((value) {
    print("Steam value: $value");
   });
}


Stream<int> emitNumbers(){

  //Este stream va a mandar de 1 hasta n
  return Stream.periodic(const Duration(seconds: 1), (value){
    //print("Desde periodic $value");
    return value;
  }).take(5);


}