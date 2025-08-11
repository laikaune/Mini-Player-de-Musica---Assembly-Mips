# Player de Músicas em Assembly MIPS

Este é um mini player de músicas escrito em Assembly MIPS, usando as **syscalls** do MARS para tocar notas MIDI.
O programa exibe um menu simples no terminal, onde o usuário pode escolher entre três músicas pré-definidas ou sair.

## Funcionalidades

- Menu interativo para escolha da música.
- Execução de três músicas diferentes:
  1. Doremi (do, re, mi)
  2. Fafafa (fa, fa, fa)
  3. Lasido (la, si, do)
- Saída do programa pelo menu.
- Interface textual organizada.

## Estrutura do Código

- **Menu**: Apresenta as opções e lê a escolha do usuário.
- **Funções tocar_musicaX**: Carregam a sequência de notas e chamam a subrotina de execução.
- **Subrotina tocar**: Percorre o vetor de notas e usa a syscall 31 para reproduzir sons.
- **Sair**: Usa a syscall 10 para encerrar.

## Requisitos

- **MARS** (MIPS Assembler and Runtime Simulator) para executar o código.
- Arquivo `.asm` do programa.

## Como Executar

1. Baixe o MARS: [MARS Download](http://courses.missouristate.edu/KenVollmar/mars/)
2. Abra o arquivo `.asm` no MARS.
3. Monte o programa (`Assemble`).
4. Execute (`Run`).

## Exemplo de Uso

```
================= PLAYER DE MUSICAS =================
1 - Tocar Doremi
2 - Tocar Fafafa
3 - Tocar Lasido
4 - Sair
=====================================================
Escolha uma opcao: 1

Tocando musica...
```
