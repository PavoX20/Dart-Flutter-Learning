//Futures es como las promesas en dart

void main() async{
   print("Inidico del programa");



  try{
    final value = await httpGet("https://facebook.com");

      print(value);
  }catch(err){
    print("El error es: $err");
  }
  

   print("Fin del programa");

}


 Future<String> httpGet(String url) async{
    await Future.delayed(const Duration(seconds: 1));

    return "Tenemos un valor de la petición";

      

       }