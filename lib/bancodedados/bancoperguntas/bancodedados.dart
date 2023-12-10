import 'package:quizdev/bancodedados/bancoperguntas/questoes.dart';

class BancodeDados {
  List<Questoes> perguntasquiz = [
    Questoes(
      questoes: 'Qual é o objetivo da linguagem HTML?',
      alternativas: [
        'Manipular bancos de dados',
        'Criar páginas web',
        'Realizar cálculos matemáticos',
        'Gerenciar arquivos no sistema',
      ],
      altercorreta: 1,
      nivel: 'facil',
    ),
    Questoes(
      questoes: 'O que é um loop em programação?',
      alternativas: [
        'Executado uma vez',
        'Repetição de código',
        'Variável constante',
        'Interromper execução',
      ],
      altercorreta: 1,
      nivel: 'facil',
    ),
    Questoes(
      questoes: 'Qual é a função de uma variável?',
      alternativas: [
        'Armazenar em banco',
        'Operações matemáticas',
        'Controlar fluxo do programa',
        'Armazenar e manipular valores',
      ],
      altercorreta: 3,
      nivel: 'facil',
    ),
    Questoes(
      questoes: 'O que significa a sigla HTML?',
      alternativas: [
        'Hypertext Markup Language',
        'High-Level Programming',
        'Hyper Transfer Markup',
        'Human Text Machine',
      ],
      altercorreta: 0,
      nivel: 'facil',
    ),
    Questoes(
      questoes: 'Diferença entre linguagens compiladas e interpretadas?',
      alternativas: [
        'Compiladas são mais lentas',
        'Interpretadas traduzidas integralmente',
        'Compiladas traduzidas linha por linha',
        'Interpretadas geram código executável',
      ],
      altercorreta: 1,
      nivel: 'medio',
    ),
    Questoes(
      questoes: 'O que é SQL usado para gerenciar?',
      alternativas: [
        'Redes de computadores',
        'Arquivos de sistema',
        'Bancos de dados relacionais',
        'Interfaces de usuário',
      ],
      altercorreta: 2,
      nivel: 'medio',
    ),
    Questoes(
      questoes: 'O que significa OOP em programação?',
      alternativas: [
        'Only One Page',
        'Object-Oriented Programming',
        'Online Operating Procedures',
        'Operational Optimization Process',
      ],
      altercorreta: 1,
      nivel: 'medio',
    ),
    Questoes(
      questoes: 'O que são exceções em programação?',
      alternativas: [
        'Erros durante compilação',
        'Mensagens informativas',
        'Eventos imprevisíveis',
        'Variáveis com valores fora',
      ],
      altercorreta: 2,
      nivel: 'medio',
    ),
    Questoes(
      questoes: 'Diferença entre programação síncrona e assíncrona?',
      alternativas: [
        'Assíncrona sequencial',
        'Síncrona múltiplas tarefas',
        'Síncrona mais eficiente',
        'Assíncrona sem callbacks',
      ],
      altercorreta: 0,
      nivel: 'dificil',
    ),
    Questoes(
      questoes: 'O que é Big O notation usado para descrever?',
      alternativas: [
        'Tamanho de um programa',
        'Desempenho ou complexidade',
        'Quantidade de código-fonte',
        'Número de linhas de código',
      ],
      altercorreta: 1,
      nivel: 'dificil',
    ),
    Questoes(
      questoes: 'O que é polimorfismo na programação orientada a objetos?',
      alternativas: [
        'Ocultar implementação',
        'Habilidade de herdar',
        'Tratar objetos de diferentes classes',
        'Restrição de acesso aos membros',
      ],
      altercorreta: 2,
      nivel: 'dificil',
    ),
    Questoes(
      questoes: 'O que é um design pattern na programação?',
      alternativas: [
        'Modelo gráfico para interfaces',
        'Técnica para otimizar algoritmos',
        'Solução geral para problemas',
        'Conjunto de regras para garantir qualidade',
      ],
      altercorreta: 2,
      nivel: 'dificil',
    ),
  ];
}
