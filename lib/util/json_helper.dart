class JsonHelper{
  static List<String> getStringList(List<dynamic> d){
    List<String> lista = [];
    for(var i in d){
      lista.add(i as String);
    }
    return lista;
  }
}