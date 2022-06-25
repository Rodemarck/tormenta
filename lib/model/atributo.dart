class Atributo{
  int valorBase = 10;
  int valorFinal = 10;

  int modificador (){
    return ((valorFinal / 2) as int) - 5;
  }
  String getModificador(){
    int mod = modificador();
    return mod < 0 ? '-$mod':'+$mod';
  }


  Atributo(this.valorBase);

}