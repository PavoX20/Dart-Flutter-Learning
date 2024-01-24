//En este caso estamos haciendo uso de try y catch, que tiene más usos como el on y el finally

void main() async{
   print("Inidico del programa");



  try{
    final value = await httpGet("https://facebook.com");

      print("éxito: $value");
  }on Exception catch(err) {
    print("Tenemos una Exception: $err");
  }catch(err){
    print("El error es: $err");
  }finally{
    print("Fin del Try y catch");
  }
  

   print("Fin del programa");

}


 Future<String> httpGet(String url) async{
    await Future.delayed(const Duration(seconds: 1));

    throw Exception("No hay parámetros en el URL");

    //return "Tenemos un valor de la petición";

      

       }