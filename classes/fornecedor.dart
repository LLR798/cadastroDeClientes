import '../classes-abstratas/pessoa.dart';
import '../mixins/abastecer.dart';
import '../mixins/comprar.dart';

class Fornecedor extends Pessoa with Abastecer, Comprar {
  String contrato;
  Fornecedor(String nome, String email, int idade, String sexo)
      : this.contrato = 'contrato ativo',
        super(nome: nome, email: email, idade: idade, sexo: sexo);

  @override
  void desativar() {
    this.contrato = 'contrato inativo';
  }
}
