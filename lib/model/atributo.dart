class Atributo{
  int valorBase = 10;
  int valorFinal = 10;

  int modificador ([bool base = false]){
    return ((((base ? valorBase : valorFinal) * 1.0 -1) / 2.0).round()  - 5);
  }
  String getModificador([bool base = false]){
    int mod = modificador(base);
    return mod < 0 ? '$mod':'+$mod';
  }
  Atributo(this.valorBase);

  static final Map<String, String> nome = const{
    'for':'Força',
    'des':'Destreza',
    'sab':'Sabedoria',
    'int':'Inteligência',
    'car':'Carisma',
    'con':'Constituição'
  };
}