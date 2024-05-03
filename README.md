# Automação Teste DRC

Bem-vindo ao repositório do projeto de teste DRC! Este é um ambiente dedicado para desenvolver e testar automações de teste usando o Robot Framework.

## Descrição

Este projeto tem como objetivo fornecer um exemplo de estrutura básica para automações de teste usando o Robot Framework. O Robot Framework é uma estrutura de automação de teste de código aberto que permite a escrita de testes de aceitação e automação de processos de maneira eficaz.

## Configuração do Ambiente para desenvolvimento

Antes de começar a executar os testes, certifique-se de que você tenha o seguinte configurado:

- Python [com opção Path] (latest version): `https://www.python.org/downloads/`
- Robot Framework (latest version) `pip install robotframework`
- VSCode (latest version): `https://code.visualstudio.com/download`
- Mozilla Firefox: `https://www.mozilla.org/pt-BR/firefox/`
    -Extensões:
        - Robot Framework Language: `https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp`
        - Dracula Official (opcional): `https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula`
        - Material Icon Theme (opcional): `https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme`
        - Selenium Library: `pip install --upgrade robotframework-seleniumlibrary`
        - Setup Tools:      `pip install setuptools`
        - Faker Library:    `pip install --upgrade robotframework-faker`

## Pipeline

Atualmente temos uma configuração da nossa Pipeline com os testes funcionais de verificação de módulos, rodando em uma máquina Ubuntu via Azure. As definições e configurações está em nosso arquivo azure-pipelines.yml. Os nossos testes são programados para rodarem em todo commit em nossa main ou de segunda à sexta às 09 horas. As informações adicionais (programação da Pipeline e envios por e-mail) estão configuradas diretamente no ambiente de Pipelines do Azure.

## Instalação

1. Clone este repositório para o seu sistema: `git clone https://dev.azure.com/fcsistemasinternos/Sistemas%20Internos/_git/automacao-qa`
2. Clique em Generate Git Credentials e cole sua chave de acesso
3. Abra o repositório com Open Folder do Vscode

## Executando os Testes

Para executar os testes, siga estas etapas:

1. Abra o terminal: `Ctrl+Shift+'`
2. Execute todos os testes da suíte usando o comando de tag: `robot -d ./results -i regressivo-fcbr ./tests/`
    2.1 Este comando faz com que todas as evidências permaneçam organizadas dentro da pasta /Results
3. Caso queira rodar por Caso de Teste, utilize: `robot -d ./results -t "[TÍTULO DO CASO DE TESTE AQUI]" ./tests/register.robot`
    3.1 Exemplo de caso específico: `robot -d ./results -t "Cenário de Teste 1: Validar que o módulo de Carta de Faturamento está funcionando corretamente" ./tests/modules.robot`

## Estrutura do Projeto

Explicação da estrutura de diretórios do projeto:

- `custom-libraries`: Diretório onde são armazenadas as libraries personalizadas de nosso projeto.
- `pageobject/data`: Diretório que contém o mapeamento XPath da página do Financial FC.
- `pageobject/pages`: Diretório que contém as Keywords que utilizaremos nos casos de teste.
- `pageobject/testdata`: Diretório onde contém dados sensíveis como por exemplo um login e senha.
- `pageobject/utils`: Diretório onde armanzenamos todos os Resources, Variables e Libraries de nosso projeto.
- `tests/`: Este diretório contém os arquivos de teste escritos em formato .robot.
- `azure-pipelines.yml`: Arquivo de configuração de nossa Pipeline.
- `requirements.txt`: Arquivo de configuração para instalação do Robot e de suas Libraries no início de nosso run da Pipeline.

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas, bugs ou tiver melhorias para propor, sinta-se à vontade para contactar o QA Matheus Martins (matheus.martins@hotmail.com).

## Licença

Este projeto está licenciado sob o time de Testes SA.