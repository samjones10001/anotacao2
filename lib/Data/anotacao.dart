import 'dart:async';

class anotacao {
  late final int? id;
  late final String? assunto;
  late final String? texto;
  late final DateTime? data;
  late final bool? travar;

  anotacao({this.id, this.assunto, this.texto, this.data, this.travar});

  anotacao.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        assunto = json['assunto'],
        texto = json['texto'],
        data = DateTime.parse(json['data']),
        travar = json['travar'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'assunto': assunto,
      'texto': texto,
      'data': data,
      'travar': travar,
    };
  }

  anotacao.fromMap(Map<String,dynamic> map) {
    id = map['id'];
    assunto = map['assunto'];
    texto= map['texto'];
    data = map['data'];
    travar = map['travar'];
  }

  Map<String, dynamic> toJson() =>
      {
        'id' : id,
        'assunto': assunto,
        'texto': texto,
        'data': data!.toIso8601String(),
        'travar': travar,
      };
  @override
  String toString() {
    return 'anotacao{id: $id, assunto: $assunto, texto: $texto, data: $data, travar: $travar}';
  }
}
