

class link {
  late final int? id;
  late final String? url;
  late final String? obs;
  late final DateTime? data;
  late final bool? travar;

  link({this.id, this.url, this.obs, this.data, this.travar});

  link.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'],
        obs = json['obs'],
        data = DateTime.parse(json['data']),
        travar = json['travar'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'obs': obs,
      'data': data,
      'travar': travar,
    };
  }

  Map<String, dynamic> toJson() =>
      {
        //'id' : id,
        'url': url,
        'obs': obs,
        'data': data!.toIso8601String(),
        'travar': travar,
      };
  @override
  String toString() {
    return 'link{id: $id, url: $url, obs: $obs, data: $data, travar: $travar}';
  }
}
