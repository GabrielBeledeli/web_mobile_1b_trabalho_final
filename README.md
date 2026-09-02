# web_mobile_1b_trabalho_final
🎮 Jogo da Forca

Aplicativo de Jogo da Forca desenvolvido em Flutter como trabalho final do primeiro bimestre da disciplina de Desenvolvimento de Sistemas para WEB/Mobile IV.

O projeto foi desenvolvido com o objetivo de aplicar conceitos de desenvolvimento de aplicações mobile utilizando Flutter e Dart, com uma interface interativa e componentes reutilizáveis.

📱 Sobre o projeto

O Jogo da Forca é uma aplicação na qual o jogador deve descobrir uma palavra secreta tentando acertar suas letras.

A cada tentativa incorreta, uma nova parte da forca é apresentada. O jogador deve descobrir a palavra antes que o personagem seja completamente desenhado.

O projeto também possui uma tela de histórico das partidas, permitindo consultar resultados anteriores.

✨ Funcionalidades
🎯 Jogo de Forca interativo
🔤 Teclado virtual para seleção das letras
❤️ Controle das tentativas disponíveis
🪢 Representação visual da forca
🏆 Exibição do resultado da partida
📜 Histórico de partidas
🔄 Possibilidade de iniciar uma nova partida
📱 Interface desenvolvida para aplicações Flutter
🧩 Componentização da interface através de widgets reutilizáveis
🛠️ Tecnologias utilizadas
Flutter
Dart
Material Design
Cupertino Icons
Flutter Lints

📂 Estrutura do projeto
web_mobile_1b_trabalho_final/
│
└── jogo_da_forca/
    │
    ├── android/
    ├── ios/
    ├── linux/
    ├── macos/
    ├── web/
    ├── windows/
    │
    ├── assets/
    │   └── images/
    │
    ├── lib/
    │   ├── pages/
    │   │   ├── history_page.dart
    │   │   └── jogo_da_forca_page.dart
    │   │
    │   ├── widgets/
    │   │   ├── barra_tentativas_widget.dart
    │   │   ├── button_widget.dart
    │   │   ├── forca_widget.dart
    │   │   ├── letras_digitadas_widget.dart
    │   │   ├── resultado_widget.dart
    │   │   └── teclado_widget.dart
    │   │
    │   └── main.dart
    │
    ├── test/
    ├── pubspec.yaml
    └── README.md



🚀 Como executar o projeto
Pré-requisitos

Antes de executar o projeto, é necessário ter instalado:

Flutter
Dart SDK compatível com o projeto
Android Studio ou outro ambiente compatível com Flutter
Um dispositivo físico ou emulador Android/iOS, ou navegador compatível
1. Clone o repositório
git clone https://github.com/GabrielBeledeli/web_mobile_1b_trabalho_final.git

2. Entre na pasta do projeto
cd web_mobile_1b_trabalho_final/jogo_da_forca

3. Instale as dependências
flutter pub get

4. Verifique os dispositivos disponíveis
flutter devices

5. Execute a aplicação
flutter run

Também é possível executar diretamente em uma plataforma específica, por exemplo:

flutter run -d chrome

ou em um dispositivo Android conectado:

flutter run -d android

🎮 Como jogar

Inicie uma nova partida.
Uma palavra será selecionada pelo jogo.
Utilize o teclado disponível na tela para escolher uma letra.
Caso a letra esteja presente na palavra, ela será revelada.
Caso a letra esteja incorreta, uma nova parte da forca será desenhada.
Continue tentando até descobrir a palavra ou atingir o limite de erros.
Ao finalizar, o resultado da partida será apresentado.
O histórico pode ser consultado posteriormente.

🧩 Componentes

O projeto utiliza widgets separados para facilitar a organização e manutenção do código.

ForcaWidget

Responsável pela representação visual da forca e do progresso do jogador.

TecladoWidget

Implementa o teclado utilizado pelo jogador para realizar as tentativas de letras.

LetrasDigitadasWidget

Exibe as letras que já foram utilizadas durante a partida.

BarraTentativasWidget

Apresenta visualmente a quantidade de tentativas disponíveis.

ResultadoWidget

Responsável pela apresentação do resultado ao final da partida.

ButtonWidget

Componente reutilizável para os botões da aplicação.

📄 Páginas

Jogo da Forca

A página principal da aplicação contém a partida e os elementos necessários para que o usuário possa realizar suas tentativas.


🎓 Objetivo acadêmico

Este projeto foi desenvolvido como trabalho final da disciplina de Desenvolvimento de Sistemas para WEB/Mobile IV, tendo como objetivo colocar em prática conhecimentos relacionados ao desenvolvimento de aplicações utilizando Flutter e Dart.

Além da implementação da lógica do jogo, foram aplicados conceitos de:

Desenvolvimento de interfaces;
Componentização;
Organização de projetos Flutter;
Criação de widgets reutilizáveis;
Navegação entre telas;
Gerenciamento do estado da aplicação;
Desenvolvimento multiplataforma.

👨‍💻 Autores

Gabriel Beledeli
Alisson Eraldo da Silva

GitHub:
@GabrielBeledeli
@AlissonnSilva

📚 Repositório

O código-fonte completo do projeto está disponível no GitHub:

https://github.com/GabrielBeledeli/web_mobile_1b_trabalho_final

Desenvolvido com Flutter e Dart.
