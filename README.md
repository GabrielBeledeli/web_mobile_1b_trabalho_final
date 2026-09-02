# 🎮 Jogo da Forca — Trabalho Final (Web & Mobile)

Projeto acadêmico desenvolvido em **Flutter** para a disciplina de **Desenvolvimento de Sistemas para WEB/Mobile IV** (Trabalho Final 1B).

---

## 🎯 Visão Geral e Regras

1. **Objetivo**: Descobrir a palavra secreta sorteada antes de cometer **6 erros** (número máximo de tentativas incorretas).
2. **Tema das Palavras**: Termos do universo de desenvolvimento e tecnologia (`FLUTTER`, `DEVELOPER`, `DART`, `TECLADO`, `PROGRAMACAO`, `CELULAR`, `COMPUTADOR`, `NOTEBOOK`, `WIDGET`, `FORCA`).
3. **Feedback no Teclado**:
   - Letra correta: o botão fica **verde**.
   - Letra incorreta: o botão fica **cinza**.
   - Letras já jogadas ou quando o jogo termina: o botão fica desabilitado para evitar cliques repetidos.
4. **Fim de Jogo**:
   - **Vitória**: Jogador acertou todas as letras da palavra.
   - **Derrota**: Jogador atingiu o limite de 6 erros e o boneco da forca foi completado.
   - Em ambos os casos, um cartão de resultado é exibido flutuando no centro da tela com o botão para iniciar uma nova partida, e o resultado é salvo no histórico.

---

## 📁 Estrutura do Projeto

```text
web_mobile_1b_trabalho_final/
│
├── README.md                          # Documentação geral do repositório
└── jogo_da_forca/                     # Projeto Flutter
    ├── pubspec.yaml                   # Dependências e assets do projeto
    ├── assets/
    │   └── images/                    # Imagens da forca (forca_0 a 6) e line.png
    └── lib/
        ├── main.dart                  # Ponto de entrada do aplicativo
        ├── pages/
        │   ├── jogo_da_forca_page.dart # Tela principal do jogo (StatefulWidget)
        │   └── history_page.dart      # Tela de histórico de partidas
        └── widgets/
            ├── barra_tentativas_widget.dart # Cartão do contador de tentativas
            ├── button_widget.dart           # Botão individual do teclado
            ├── forca_widget.dart            # Desenho da forca + traços e letras
            ├── letras_digitadas_widget.dart # Painel com as letras já jogadas
            ├── resultado_widget.dart        # Balão flutuante de vitória/derrota
            └── teclado_widget.dart          # Teclado completo
```

---

## 🏛️ Arquitetura e Gerenciamento de Estado

- **StatefulWidget Centralizado (`JogoDaForcaPage`)**: A tela principal é o único ponto que retém o estado mutável do jogo (`palavraSorteada`, `letrasTentadas`, `quantidadeDeErros`, `historico`). É nela que o método `setState()` é executado.
- **StatelessWidgets Modulares (`lib/widgets/`)**: Todos os componentes visuais são widgets puros e imutáveis. Eles apenas recebem parâmetros via construtor e notificam eventos para a página pai.

---

## 📄 Páginas (Pages)

### 1. `JogoDaForcaPage` (`lib/pages/jogo_da_forca_page.dart`)
É o coração do aplicativo. Gerencia o ciclo de vida da partida, sorteia palavras aleatórias, processa os palpites do usuário e organiza visualmente a coluna com todos os widgets modulares. Na AppBar, disponibiliza ações para reiniciar o jogo e navegar até a tela de histórico.

### 2. `HistoryPage` (`lib/pages/history_page.dart`)
Tela secundária acessada via botão de histórico na AppBar. Recebe a lista de partidas jogadas e renderiza cada registro em cartões estilizados:
- Partidas com vitória exibem o prefixo 🏆 `VITÓRIA` com o total de erros cometidos.
- Partidas com derrota exibem o prefixo ❌ `DERROTA` indicando a palavra secreta que não foi adivinhada.
- Caso não haja partidas salvas, exibe uma mensagem informativa centralizada.

---

## 🧩 Widgets Modulares (Widgets)

### 1. `ForcaWidget` (`lib/widgets/forca_widget.dart`)
Responsável pela representação gráfica da forca e das letras descobertas:
- Utiliza um `AspectRatio(aspectRatio: 1200 / 1080)` para manter a proporção exata das imagens originais da forca sem distorções em telas de diferentes tamanhos.
- Emprega uma `Stack` com a imagem do estágio atual (`assets/images/forca_$quantidadeDeErros.png`) e uma sobreposição no rodapé da imagem com as linhas (`assets/images/line.png`) e as letras já adivinhadas.
- Caso a letra ainda não tenha sido tentada pelo jogador, o espaço acima da linha permanece em branco.

### 2. `TecladoWidget` (`lib/widgets/teclado_widget.dart`)
Constrói o teclado alfabético completo organizado em 3 linhas:
- Linha 1: `Q`, `W`, `E`, `R`, `T`, `Y`, `U`, `I`, `O`, `P`
- Linha 2: `A`, `S`, `D`, `F`, `G`, `H`, `J`, `K`, `L`
- Linha 3: `Z`, `X`, `C`, `V`, `B`, `N`, `M`
- Cada tecla é instanciada individualmente utilizando o `ButtonWidget`.
- Avalia dinamicamente se a letra já foi jogada para definir cor de fundo (verde ou cinza) e desabilitar o clique.

### 4. `BarraTentativasWidget` (`lib/widgets/barra_tentativas_widget.dart`)
Cartão localizado na parte superior da tela:
- Exibe um ícone de coração (`Icons.favorite`) e o contador dinâmico de tentativas restantes:  
  `Tentativas restantes: (maximoDeErros - quantidadeDeErros) / maximoDeErros`
- O texto e o ícone alternam para a cor vermelha quando o jogador comete 4 ou mais erros.

### 5. `LetrasDigitadasWidget` (`lib/widgets/letras_digitadas_widget.dart`)
Painel que lista todos os palpites já feitos pelo jogador na partida atual:
- Conforme as letras são clicadas, gera tags em formato `Wrap` com bordas arredondadas e cores verde para acertos e cinza para erros.

### 6. `ResultadoWidget` (`lib/widgets/resultado_widget.dart`)
Painel flutuante de desfecho da partida:
- Posicionado sobreposto à forca dentro da `Stack` central.
- Só é renderizado quando `foiVitoria` ou `foiDerrota` for verdadeiro.
- Exibe o título ("Parabéns! Você Venceu!" ou "Fim de Jogo!"), a mensagem explicativa revelando a palavra secreta e o botão `"Novo Jogo"`, permitindo reiniciar a partida instantaneamente.

---

## ⚙️ Lógica de Negócio e Funções

As principais regras e métodos do jogo estão centralizados no estado `_JogoDaForcaPageState`:

| Função / Getter | Descrição |
| :--- | :--- |
| `iniciarNovaPartida()` | Sorteia aleatoriamente uma nova palavra da lista `listaDePalavras`, limpa o conjunto `letrasTentadas` e zera o contador `quantidadeDeErros`. |
| `tentarLetra(String letra)` | Chamada ao pressionar qualquer botão do teclado. Adiciona a letra ao conjunto `letrasTentadas`, incrementa `quantidadeDeErros` caso a letra não pertença à palavra e, se a partida terminar, registra o resultado na lista `historico`. |
| `foiVitoria` | *Getter booleano*: avalia se todos os caracteres de `palavraSorteada` estão contidos no conjunto `letrasTentadas`. |
| `foiDerrota` | *Getter booleano*: avalia se `quantidadeDeErros >= maximoDeErros` (6 erros). |

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado (versão 3.x ou superior).
- Emulador Android/iOS configurado ou dispositivo físico conectado via depuração USB.

### Passos
1. Acesse a pasta do projeto Flutter:
   ```bash
   cd jogo_da_forca
   ```

2. Obtenha as dependências do Flutter:
   ```bash
   flutter pub get
   ```

3. Verifique se o código está livre de alertas e erros:
   ```bash
   flutter analyze
   ```

4. Execute o aplicativo no seu dispositivo/emulador:
   ```bash
   flutter run
   ```

## 👥 Desenvolvedores

- **Gabriel Beledeli Hul**
- **Alisson Eraldo**

---

Engenharia de Software 6A — Centro Universitário Campo Real
