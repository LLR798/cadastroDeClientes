import '../classes-abstratas/pessoa.dart';
import '../mixins/comprar.dart';

class Cliente extends Pessoa with Comprar{
  String status;

  Cliente(
      {required String nome,
      required String email,
      required int idade,
      required String sexo,
      required String status})
      : this.status = 'está na loja',
        super(nome: nome, email: email, idade: idade, sexo: sexo);

  Cliente.masculino(
      {required String nome,
      required String email,
      required int idade,
      required String status})
      : this.status = status,
        super.construtorMasculino(nome: nome, email: email, idade: idade);

  Cliente.feminino(
      {required String nome,
      required String email,
      required int idade,
      required String status})
      : this.status = status,
        super.construtorFeminino(nome: nome, email: email, idade: idade);

  @override
  String toString() {
    return 'O cliente de nome ${this.nome} possui e-mail ${this.email}' +
        ' e ${this.idade} anos, além do sexo ${this.sexo} e ${this.status}';
  }

  @override
  void desativar() {
    this.status = 'não está na loja';
  }
}
