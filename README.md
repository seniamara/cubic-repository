```markdown
# Cubic List To Do

Um aplicativo simples de lista de tarefas desenvolvido com **Flutter** e gerenciado pelo **Flutter Bloc**. Ele permite adicionar, visualizar e remover tarefas da lista, demonstrando a implementação básica de gerenciamento de estado usando **Cubit**.

---

## 📋 Funcionalidades

- Adicionar tarefas: Insira uma nova tarefa usando o campo de texto e o botão de adicionar.
- Remover tarefas: Exclua tarefas específicas com o botão de exclusão.
- Gerenciamento de estado com Cubit: Estados como carregamento, sucesso, falha e lista inicial são controlados pelo Cubit.
- Feedback visual: Exibição de diferentes estados (como erro ou carregamento) com base na lógica de negócios.

---

## 🛠 Tecnologias Utilizadas

- Flutter: Framework para desenvolvimento de aplicativos multiplataforma.
- Flutter Bloc: Gerenciamento de estado com Cubit.
- Dart: Linguagem principal para desenvolvimento no Flutter.

---

## 📂 Estrutura do Projeto

```plaintext
lib/
├── app/
│   ├── pages/
│   │   ├── cubic/
│   │   │   ├── todo_cubit.dart       // Lógica de negócios usando Cubit
│   │   │   ├── todo_status.dart      // Definição dos estados do Cubit
│   │   ├── home/
│   │   │   ├── home_page.dart        // Página principal com a lista de tarefas
│   ├── my_app.dart                   // Inicialização do aplicativo
└── main.dart                         // Arquivo principal para execução
```

---

## 🚀 Como Rodar o Projeto

### Pré-requisitos

- Flutter instalado. Siga a documentação oficial: [Instalação do Flutter](https://docs.flutter.dev/get-started/install)
- Dispositivo físico ou emulador configurado.

### Passos

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/cubic-list-to-do.git
   ```
2. Acesse o diretório do projeto:
   ```bash
   cd cubic-list-to-do
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Inicie o aplicativo:
   ```bash
   flutter run
   ```

---

## 🤝 Contribuindo

Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request. 😊

---

## 📧 Contato

Seniamara Benedito  
[LinkedIn]([https://www.linkedin.com/in/seu-perfil](https://www.linkedin.com/in/seniamara-benedito-04630731b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)) | [GitHub](https://github.com/seniamara)

---

**⭐ Se você gostou deste projeto, deixe uma estrela no repositório!**
