 void main(){
  final String pokemon = 'Rayquaza';
  final int hp= 1000;
  final bool isAlive = true;
  final abilities = ['Bucle aire','Ascenso draco','Ráfaga delta'];
  final sprites = <String>['Rayquza_front.png','Rayquaza_back.png']
  


  
  
  print(""" El pokemon que elegiste es: $pokemon
  ---------------------------------------------------------------------------------------------
  Las estadisticas de $pokemon son :
  Vida(HP): $hp
  Estatus de vida: $isAlive
  Habilidades: $abilities
  Imagen: $sprites"""
);
  
}