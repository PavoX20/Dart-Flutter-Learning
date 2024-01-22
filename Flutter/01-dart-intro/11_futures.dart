//Futures es como las promesas en dart

void main(){
   print("Inidico del programa");


  httpGet("https://facebook.com").then((value){
    print(value);

  }).catchError((err) {
    print("Error: $err");
  });


   print("Fin del programa");





}

//El String aquí es por que Future devolverá un String, si notas hay dos returns
 Future<String> httpGet(String url){
    return Future.delayed(const Duration(seconds: 1), () {
      //throw "Error en la petición http";
      
      return "Respuesta http"; //Esta línea ninca se ejecutará, *Importante*:si cambio aquí el string por un número me va a dar error

      
    });
 }