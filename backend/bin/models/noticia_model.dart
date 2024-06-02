class NoticiaModel {
  final int? id;
  final String titulo;
  final String descricao;
  final String imagem;
  final DateTime dtPublicacao;
  final DateTime? dtAtualizacao;

  NoticiaModel(
    this.id,
    this.titulo,
    this.descricao,
    this.imagem,
    this.dtPublicacao,
    this.dtAtualizacao,
  );

  factory NoticiaModel.fromJson(Map map) {
    return NoticiaModel(
      map['id'] ?? '',
      map['titulo'],
      map['descricao'],
      map['imagem'],
      map['dtPublicacao'],
      map['dtAtualizacao'] ?? '',
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'NoticiaModel(id: $id, titulo: $titulo, descrição $descricao, imagem $imagem, Data da Publicação: $dtPublicacao, Data da Atulização: $dtAtualizacao)';
  }
}
