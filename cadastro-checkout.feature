#language: pt

Feature: Cadastro checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

# Critérios de Aceitação:
# 1 - Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
# 2 - Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
# 3 - Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

Contexto:
Dado que eu acesse a tela de checkout

Cenário: Preencher todos campos obrigatórios
Dado que eu acesse a tela de checkout, devo cadastrar os seguintes dados:
| Nome | Sobrenome | País   | Enredeço      | Cidade    | Estado | CEP      | Telefone      | Endereço de email |
| João | das Coves | Brasil | Av. Noob, 123 | São Paulo | SP     | 12345678 | 99 99999-9999 | jcoves@ebac.com   |
Quando eu preencher os campos
E clico no flag Termos e Condições
E clico no botão Finalizar Compra
Então o sistema irá concluir a compra

Esquema do Cenário: Email com formato inválido
Quando eu digitar o <email>
Então deve exibir a <mensagem> de erro
Exemplos:
| email       | mensagem                       |
| user.com.br | E-mail de faturamento inválido |
| user.com    | E-mail de faturamento inválido |
| user-@.com  | E-mail de faturamento inválido |

Cenário: Cadastro com campos vazios
Quando não preencho os dados dos inputs
E não clico no flag Termos e Condições
E clico no botão Finalizar Compra
Então é apresentado um modal com avisos de campos obrigatórios


