import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;
  String texto = "sair";
  while (condicao) {
    print("Adicione um produto: ");
    String? text = stdin.readLineSync();
    if (text == null) {
      print("não é possivel deixar em branco, tente novamente:");
      String? text = stdin.readLineSync();
    } else {
      texto = text;
    }
    if (texto == "sair") {
      print("Programa encerrado: ");
      condicao = false;
    } else if (texto == "imprimir") {
      print(produtos);
      print("\n");
    } else {
      produtos.add(texto);
    }
  }
}
