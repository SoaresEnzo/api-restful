# api-restful
Repositório para guardar uma API de carros no padrão RESTful.
Ao fim do projeto, o repositório cobrirá conhecimentos de vários conceitos, incluindo testes unitários, segurança/autenticação e documentação da API

# Tecnologias
- Java
- Spring Boot
- JPA
- JUnit

#Se autenticando na API
Tendo o MySQL na sua máquina, importe o arquivo .sql em "/database" para importar os roles de acesso e alguns usuários padrões.
Por padrão existem os acessos de login "admin" e "user", ambos com senha "123".

Para criar um novo usuário, ainda não há interface. Preencha os campos no banco de dados e criptografe sua senha com bcrypt antes de a inserir no banco de dados. 

A API usa BasicAuth, então inclua o header "Authorization: Basic {credenciais em base 64 no formato usuário:senha}" na sua requisição, ou use a aba Authorization e preencha seus dados, caso esteja usando o Postman.