import '../classes-abstratas/pessoa.dart';
import '../mixins/abastecer.dart';

class Funcionario extends Pessoa with Abastecer{
  String status;
  Funcionario(String nome, String email, int idade, String sexo)
      : this.status = 'empregado', 
        super(nome: nome, email: email, idade: idade, sexo: sexo);

  @override
  void desativar() {
    this.status = 'desempregado';
  }
}
