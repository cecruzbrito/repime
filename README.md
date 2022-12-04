<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/darlosss/repime?color=%2304D361">

<img alt="Repository size" src="https://img.shields.io/github/repo-size/darlosss/repime">

<a href="https://github.com/darlosss/repime/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/darlosss/repime">
  </a>

<img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen">
   <a href="https://github.com/darlosss/repimestargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/darlosss/repime?style=social">
  </a>
</p>

<p align="center">
  <a href="https://github.com/darlosss/repime">
    <img src="https://imgur.com/vKhsgc3.png" height="185" width="185" alt="RepiMe-logo" />
  </a>
</p>

<p align="center">
    <a href="https://flutter.dev">
        <img align="center" alt="RepiMe-Flutter" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-plain.svg">
    </a>
    <a href="https://dart.dev">
        <img align="center" alt="RepiMe-Dart" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original-wordmark.svg">
    </a>

</p>

# RepiMe

A aplicação mobile RepiMe busca centralizar, gerenciar e organizar as informações sobre as vagas em Repúblicas e Kitnets disponíveis na cidade selecionada.

---
## Sobre

Tendo em vista a forte tradição de repúblicas na cidade de Itajubá, muitos ingressantes nas universidades da cidade buscam acomodações durante o ciclo acadêmico. Nesse cenário, a fraca centralização das informações acerca das vagas gera um estresse que pode ser evitado.

Conforme as atividades da disciplina de Administração e Gerência de Redes da Universidade Federal de Itajubá, a equipe de desenvolvedores deste projeto propôs uma aplicação que busca auxiliar os universitário no processo para encontrar uma moradia. A aplicação mobile/web RepiMe foi construída com framework Flutter e a linguagem de Dart.

As orientações estão divididas nos seguintes tópicos:

- [Funcionalidades](#funcionalidades-gear)
- [Banco de dados](#banco-de-dados-chair-game_die)
- [Pré-requisitos e configuração](#pré-requisitos-e-configuração-hammer_and_wrench)
- [Layout](#layout-art)
- [Tecnologias](#tecnologias-technologist)
- [Contribuidores](#contribuidores)

---
## Funcionalidades :gear:

 - [x] Coletar cidade e universidade do usuário;
 - [x] Anunciar novas vagas (características da acomodação);
 - [x] Fornecer as informações para contato com o dono da vaga;
 - [x] Permitir o anúncio de novas vagas para usuários cadastrados;
 - [ ] Marcar no mapa as vagas já cadastradas.

---
## Banco de dados :chair: :game_die:
A aplicação utiliza um banco relacional presente no modelo entidade relacionamento abaixo, a modelagem visa permitir o registro dos cadastros de usuários, vagas, residências, locadores, vagas e cidades. A hospedagem foi feita no Heroku com o add-on Heroku Postgres e a aplicação conversa diretamento com o banco. O pgAdmin4 facilitou o processo de criação e vizualização das tabelas/relacionamentos.

![MER-RepiMe](https://imgur.com/ZHFVcgT.png)

Todos os comandos SQL utilizados para criar tabelas, tipos e funções estão presentes nesta [path](https://github.com/darlosss/repime/blob/main/database_sql) desse repositório. 

Para realizar a conexão com o banco utilizou-se a dependência:
>postgres: ^2.5.2

---
## Pré-requisitos e configuração :hammer_and_wrench:
No geral, para executar a aplicação é recomendado que o sistema já possua:
    > Java 8+;
    > Flutter SDK;
    > Android Studio;
    > Visual Studio (para Windows);
    > Visual Studio Code;
    > Maven/Gradle.

Para verificar o status do Flutter rode no terminal:
>flutter doctor

Deve-se ativar as licenças mais recentes do android com o comando:
>flutter doctor --android-licenses

Se houver problemas com o SDK Command-line do Android, entre no SDK Manager presente no Android Studio e baixe o pacote conforme imagem abaixo.

![SDKMANAGER](https://imgur.com/YI91FMs.png)

Se necessário instale a extensão do Flutter no VSCode com:
>ext install Dart-Code.flutter

O release do projeto fornece um apk para utilizar o aplicativo e, apesar do foco na versão mobile, as versões para Windows e Linux também estão funcionais.

Para executar essas versões é necessário:

```bash

# Clone este repositório com
$ git clone https://github.com/darlosss/repime.git
# ou
$ git clone git@github.com:darlosss/repime.git

# Acesse a pasta do projeto no seu terminal/cmd
$ cd repime

# Instale as dependências
$ flutter pub get

# Instâncie as versões para Windows/Linux com Flutter
$ flutter create .

# Execute a aplicação
$ flutter run

# O Flutter irá sugerir a plataforma no qual será executada a aplicação

```

Se quiser rodar a aplicação mobile em modo de debuggação é necessário habilitar a depuração no Android, conectar o aparelho com cabo USB e usar o Run and Debug do VSCode. 

---
## Layout :art:
Design base do figma: [Real Estate Mobile App Design](https://dribbble.com/shots/17966349-Real-Estate-Mobile-App-Design)
<p align="center">
  <img alt="RepiMe" title="#First" src="https://imgur.com/UIz7eEt.png" width="200px">

  <img alt="RepiMe" title="#HomeNoLogin" src="https://imgur.com/YB4eeih.png" width="200px">

  <img alt="RepiMe" title="#Login" src="https://imgur.com/YcSMfek.png" width="200px">
  
  <img alt="RepiMe" title="#HomeLogin" src="https://imgur.com/9DLNyaa.png" width="200px">

  <img alt="RepiMe" title="#UserRegister" src="https://imgur.com/Gz3JBgI.png" width="200px">

  <img alt="RepiMe" title="#UserRegister2" src="https://imgur.com/NGHSFL9.png" width="200px">

  <img alt="RepiMe" title="#UserRegister3" src="https://imgur.com/9cIJan5.png" width="200px">

  <img alt="RepiMe" title="#User" src="https://imgur.com/xkNz835.png" width="200px">

  <img alt="RepiMe" title="#VagaRegist" src="https://imgur.com/yHZNSpA.png" width="200px">

  <img alt="RepiMe" title="#VagaRegist2" src="https://imgur.com/qSMB5Cb.png" width="200px">

  <img alt="RepiMe" title="#Vaga" src="https://imgur.com/93sUQMK.png" width="200px">
</p>

---
## Tecnologias :technologist:
    O ponto de início deste projeto foi uma aplicação Flutter, as dependências utilizadas estão presentes no pubspec.yaml. 
---
Aplicação:

    -> Flutter
    - easy_refresh: ^3.0.5
    - flutter_mobx: ^2.0.6+5
    - flutter_modular: ^5.0.3
    - image_picker: ^0.8.6
    - mobx: ^2.1.3
    - path_provider: ^2.0.11
    - postgres: ^2.5.2
    - skeletons: ^0.0.3
    - cupertino_icons: ^1.0.2
    - flutter_lints: ^2.0.0
    - build_runner: ^2.3.2
    - mobx_codegen: ^2.1.1
    - flutter_launcher_icons: ^0.11.0
---
Banco de Dados:

    -> PostgreSQL
    - pgAdmin4 6.16
    - Heroku Postgres Mini
    - BRmodelo
---
Utilitários:

    -> Dev
    - Visual Studio Code 1.73
    - Android Studio Dolphin 2021.3.1
    - Figma
---  

## Contribuidores

<table>
  <tr>
    <td align="center"><a href="https://github.com/darlosss"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/72506461?v=4" width="100px;" alt=""/><br /><sub><b>Carlos Eduardo</b></sub></a><br /><a href="https://github.com/darlosss/repime" title="RepiMe">:technologist:</a></td>
    <td align="center"><a href="https://github.com/MatMB115"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/63670910?v=4" width="100px;" alt=""/><br /><sub><b>Matheus Martins</b></sub></a><br /><a href="https://github.com/MatMB115/repime" title="RepiMe">:technologist:</a></td>
    <td align="center"><a href="https://github.com/joaomarcos2803"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/103376456?v=4" width="100px;" alt=""/><br /><sub><b>João Marcos</b></sub></a><br /><a href="https://github.com/joaomarcos2803" title="RepiMe">:technologist:</a></td>
    <td align="center"><a href="https://github.com/adriano-12"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/66391807?v=4" width="100px;" alt=""/><br /><sub><b>Adriano Lucas</b></sub></a><br /><a href="https://github.com/adriano-12" title="RepiMe">:technologist:</a></td>
    <td align="center"><a href="https://www.instagram.com/lecorax/?igshid=YmMyMTA2M2Y%3D"><img style="border-radius: 50%;" src="https://i.imgur.com/hNQXe4J.png" width="100px;" alt=""/><br /><sub><b>Alexsandra</b></sub></a><br /><a href="https://www.instagram.com/lecorax/?igshid=YmMyMTA2M2Y%3D" title="Lecorax">:art:</a></td>
  </tr>
</table>
