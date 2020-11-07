### Pré-requisitos
Necessário a instalção das tecnologias a baixo, com a versão citada ou superior:
- Servidor `php` v7.4
- `nodejs` v12
- `yarn` v1.22

---------------------------------------------------------------------------
### Inicialização
Para inicializar o projeto, siga as instruções abaixo:
1. `yarn install` para instalar as dependencias do frontend
2. renomear o arquivo `env.example.json` para `env.json` e substituir os valores defaults para o correspondente ao ambiente desejado

---------------------------------------------------------------------------
### Subindo Local

`yarn start`

Esse comando subira um servidor de desenvolvimento em `http://localhost:3000/`, para desenvolvimento.

- Atentar-se para a url setada em env.json, pois ela servirá de proxy para o servidor php

---------------------------------------------------------------------------
### Build - frontend

`yarn build` 

O comando acima compilará o frontend e colocará o resultado final em `dist/assets`

---------------------------------------------------------------------------
### Controle de Versão

Durante o processo de build, será gerado o arquivo `dist/assets/version.json`, com o hash do assets. Durante a execução do php, ele consultara qual o hash atual do arquivo, injetara no nome dos arquivos `main.[hash].css` e `bundle.[hash].js`, isso forçará o download novamente do arquivo no client side.

