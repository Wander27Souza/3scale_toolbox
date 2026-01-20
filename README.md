# 3scale toolbox
[![CircleCI](https://circleci.com/gh/3scale/3scale_toolbox.svg?style=svg)](https://circleci.com/gh/3scale/3scale_toolbox)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)
[![GitHub release](https://img.shields.io/github/v/release/3scale/3scale_toolbox.svg)](https://github.com/3scale/3scale_toolbox/releases/latest)
[![codecov](https://codecov.io/gh/3scale/3scale_toolbox/branch/main/graph/badge.svg?token=ojinl2NVv5)](https://codecov.io/gh/3scale/3scale_toolbox)

## Description
Ferramenta configurações do 3scale via Docker. [3scale API Ruby Client](https://github.com/3scale/3scale-api-ruby).


🚀 Como Usar
1. Clone e Configure
```
git clone <repositorio>
cd 3scale_toolbox
```

2. Crie seu Token no 3scale
- Acesse: 3scale Admin → Account Settings → Tokens
- Clique em "Add Access Token"
Nome: 3scale-dev
Permissões: Read e Write
Copie o token (não será mostrado novamente)

3. Adicione o Remote
``` 
docker-compose run --rm 3scale-toolbox 3scale remote add  https://SEU_TOKEN@3scale-DOMINIO.com.br --insecure 
```

4. Execute Comandos
Listar Produtos Disponíveis
```
docker-compose run --rm 3scale-toolbox 3scale service list  --insecure
```

⚡ Comandos Úteis
```
docker-compose run --rm 3scale-toolbox 3scale --help
```

```shell

NAME
    3scale - 3scale toolbox

USAGE
    3scale <sub-command> [options]

DESCRIPTION
    3scale toolbox to manage your API from the terminal.

COMMANDS
    account              account super command
    activedocs           activedocs super command
    application          application super command
    application-plan     application-plan super command
    backend              backend super command
    copy                 copy super command
    help                 show help
    import               import super command
    method               method super command
    metric               metric super command
    policies             policies super command
    policy-registry      policy-registry super command
    product              product super command
    proxy                proxy super command
    proxy-config         proxy-config super command
    remote               remotes super command
    service              services super command

OPTIONS
    -c --config-file=<value>      3scale toolbox configuration file (default:
                                  $HOME/.3scalerc.yaml)
       --disable-keep-alive       Disable keep alive HTTP connection mode
    -h --help                     show help for this command
    -k --insecure                 Proceed and operate even for server
                                  connections otherwise considered insecure
    -v --version                  Prints the version of this command
       --verbose                  Verbose mode
```
