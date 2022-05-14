abstract class Pessoa {
  String _nome;
  String _email;
  int _idade;
  String _sexo;

  Pessoa({required nome, required email, required idade, required sexo})
      : this._nome = nome,
        this._email = email,
        this._idade = idade,
        this._sexo = sexo;

  Pessoa.construtorMasculino({required nome, required email, required idade})
      : this._nome = nome,
        this._email = email,
        this._idade = idade,
        this._sexo = 'masculino';

  Pessoa.construtorFeminino({required nome, required email, required idade})
      : this._nome = nome,
        this._email = email,
        this._idade = idade,
        this._sexo = 'feminino';

  String get nome => this._nome;

  String get email => this._email;

  int get idade => this._idade;

  String get sexo => this._sexo;

  void set nome(String nome) => this._nome = nome;

  void set email(String email) => this._email = email;

  void set idade(int idade) => this._idade = idade;

  void set sexo(String sexo) => this._sexo = sexo;

  void desativar();

/* 
  int fazerAniversarioLambda() => ++this._idade;

  void adicionarSobrenome(String sobrenome) {
    this._nome = '${this._nome} $sobrenome';
  }
*/

  String toString() {
    return 'A pessoa de nome ${this._nome} possui e-mail ${this._email}' +
        ' e ${this._idade} anos, além do sexo ${this._sexo}';
  }
}
