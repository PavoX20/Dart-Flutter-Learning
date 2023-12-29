void main(){
  final String pokemon = "Dratini";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> habilities = ["imposter"];
  //final habilities = <String>["imposter"];
  final List<String> sprites = ["dratini/imagen.png","dratini/imagen2.png"];
  
  //dynamic == null
  dynamic errorMessage = "Error";
    errorMessage =true;
    errorMessage =[1,2,3,4,5,6];
    errorMessage = {1,2,3,4,5,6};
    errorMessage = () => true;
    errorMessage = null;
    
  
  
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $habilities
  $sprites
  $errorMessage
  """);
  
}