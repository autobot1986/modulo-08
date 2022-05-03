#language: pt

Feature: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

# Critérios de Aceitação:
# 1 - Seleções de cor, tamanho e quantidade devem ser obrigatórios
# 2 - Deve permitir apenas 10 produtos por venda
# 3 - Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que eu acesse a página home e busque o produto "Ariel Roll Sleeve Sweatshirt"

Cenário: Seleção de atributos obrigatórios
Quando eu selecionar o tamanho "M"
E a cor "Green"
E a quantidade "1"
Então deve habilitar o botão Comprar caso tenha estoque disponível

Cenário: Quantidade máxima permitida
Quando eu selecionar o tamanho "M"
E a cor "Green"
E a quantidade "10"
Então deve habilitar o botão Comprar caso tenha estoque disponível

Cenário: Limpando inputs
Quando eu selecionar o tamanho "M"
E a cor "Green"
E a quantidade "10"
E clicar no botão Limpar
Então deve limpar os inputs preenchidos

