void main(){
  final Map<String,dynamic> pokemon={
    "name":"print",
    "hp":100,
    "isAlive":true,
    "habilities": <String> ["Hola"],
    "sprites":<int, String>{
      1:"ditto/front.png",
      2:"ditto/back.png",
    }
    
  };
  
  
  
  print (pokemon);
  
  print("Name: ${pokemon["name"]}");
  print("Sprinte #1: ${pokemon["sprites"][1]}");
  print("Sprinte #2: ${pokemon["sprites"][2]}");
}