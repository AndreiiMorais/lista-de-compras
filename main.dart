import 'dart:io';
//é possivel tambem declarar uma variavel fora do main, aqui em cima, onde ela se tornará uma variavel global, podendo ser acessada por outras funcoes.
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
        int a = 1;
        for (int i = 0; i < produtos.length; i++) {
          print("Item $a - ${produtos[i]}");
          a++;
        }
      } else if (text == "remover") {
        print("Qual item deseja remover?");
        for (int i = 0; i < produtos.length; i++) {
          print("Item $i - ${produtos[i]}");
        }
        String? input = stdin.readLineSync();
        if (input != null) {
          //esse if serve apenas para poder converter o input do teclado para int.
          int item = int.parse(input);
          if (item < produtos.length) {
            produtos.removeAt(item);
            print("Produto removido");
          } else {
            print("Item Invalido");
          }
        } else {
          print("Item invalido");
        }
      } else {
        //esse primeiro comando aqui no while serve para limpar o console na hora da execuçao.
        print("\x1B[2J\x1B[0;0H");
        texto = text.toString();
        produtos.add(texto);
      }
    } else {
      print("Nao é possivel deixar em branco, ou caractere desconhecido");
    }
  }
}
