#language: pt

Feature: Login 
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

# Critérios de Aceitação:
# 1 - Ao inserir dados válidos deve ser direcionado para a tela de checkout
# 2 - Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Autenticação válida
Quando eu digitar o usuário "user1@ebac.com.br"
E a senha "senha@123"
Então usuário deve ser redirecionado para a página de Checkout

Cenário: Usuário e senha inválidos
Quando eu digitar o usuário "userinexistente@ebac.com.br"
E a senha "senhainvalida@123"
Então deve exibir uma mensagem de alerta "Usuário ou Senha inválidos!"

