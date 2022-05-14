import 'dart:io';
import 'classes/cliente.dart';
import 'classes/fornecedor.dart';
import 'classes/funcionario.dart';
import 'classes/repositorio-cliente.dart';

var repositorioCliente = new RepositorioCliente();

void main(List<String> args) {
  var opcao;

  do {
    print('=== MENU ===');
    print('1 - Cadastrar cliente masculino');
    print('2 - Cadastrar cliente feminino');
    print('3 - Listar cliente');
    print('4 - Sair');
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarClienteMasculino();
        break;
      case 2:
        cadastrarClienteFeminino();
        break;
      case 3:
        repositorioCliente.listar();
        break;
      default:
    }
  } while (opcao != 4);
}

cadastrarClienteMasculino() {
  print('Escreva o nome do cliente: ');
  final nome = stdin.readLineSync()!;
  print('Escreva o email do cliente: ');
  final email = stdin.readLineSync()!;
  print('Escreva a idade do cliente: ');
  final idade = int.parse(stdin.readLineSync()!);

  print('Os dados cadastrados são: ');

  var cliente = new Cliente.masculino(
      nome: nome, email: email, idade: idade, status: 'está na loja');

  var fornecedor = new Fornecedor(nome, email, idade, 'masculino');

  var funcionario = new Funcionario(nome, email, idade, 'masculino');

  fornecedor.abastecer();
  fornecedor.comprar('Chocolate');
  funcionario.abastecer();
  cliente.comprar('Água sem gás');

  repositorioCliente.cadastrar(cliente);

  print(cliente.toString());
}

cadastrarClienteFeminino() {
  print('Escreva o nome do cliente: ');
  final nome = stdin.readLineSync()!;
  print('Escreva o email do cliente: ');
  final email = stdin.readLineSync()!;
  print('Escreva a idade do cliente: ');
  final idade = int.parse(stdin.readLineSync()!);

  var cliente = new Cliente.feminino(
      nome: nome, email: email, idade: idade, status: 'está na loja');

  repositorioCliente.cadastrar(cliente);

  print(cliente.toString());
}
