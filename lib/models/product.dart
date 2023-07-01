class Product {
  String? id;
  String nome;
  int valor;
  //String location;

  Product(this.nome, this.valor); // this.location);

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'],
        valor = json['valor'];
  //location = json['location'];

  // productA.toJson()
  Map<String, dynamic> toJson() => {
        'nome': nome,
        'valor': valor
        //'location': location,
        //'imageUrl': imageUrl,
        //'quant': quant
      };

  static List<Product> listFromJson(Map<String, dynamic> json) {
    List<Product> products = [];
    json.forEach((key, value) {
      Map<String, dynamic> item = {"id": key, ...value};
      products.add(Product.fromJson(item));
    });
    return products;
  }
}
