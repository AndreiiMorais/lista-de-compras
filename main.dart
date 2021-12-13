import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;
  String texto;
  while (condicao) {
    print("Adicione um produto: ");
    String? text = stdin.readLineSync();
    if (text == null || text.isNotEmpty) {
      if (text == "sair") {
        print("Programa encerrado: ");
        condicao = false;
      } else if (text == "imprimir") {
        print(produtos);
        print("\n");
      } else {
        texto = text.toString();
        produtos.add(texto);
      }
    } else {
      print("Nao é possivel deixar em branco, ou caractere desconhecido");
    }
  }
}
