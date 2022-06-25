class Pericia{
  String atributo = 'for';
  String nome = '';
  bool somenteTreino = true;
  bool penalidade = false;
  int treino = 0;
  int outros = 0;
  String descricao = '';
  List<dynamic> acoes = [];

  Pericia(this.nome, this.atributo, this.somenteTreino, this.penalidade, this.descricao, this.acoes);
}