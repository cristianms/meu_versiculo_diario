# APP - Meu Versículo Diário
Aplicativo para gerar versículo bíblicos randômicos simulando a experiência de uma "caixinha de promessas". Desenvolvido em Flutter aplicando algumas boas práticas de Clean Architecture.

### Pendências
- [x] Criação de coleção dos versículos biblicos utilizados nas caixinhas de promessas
- [x] Geração de versículo randômico na tela inicial
- [x] Opção de gerar um novo versículo randômico na tela inicial
- [x] Política de privacidade
- [x] Criação dos logos
- [x] Importação de banco de dados contendo toda a bíblia
- [ ] Compartilhamento de versículo
- [ ] Notificação diária
- [ ] Configuração de horário do dia para receber um versículo

### Fastlane

1 - Necessário ter o **Ruby** instalado, caso não tenha ele pode ser instalado no Windows com:
```cmd
choco install ruby
```

2 - Recomendado utilizar o **Bundler**. Após ter o Ruby executar a instalação da gem através do Bundler:
```cmd
gem install bundler
```
3 - Executar:
```cmd
bundle update
```

4 - Na raíz do projeto criar o arquivo de dependências **./Gemfile**, com o seguinte conteúdo:
```cmd
source "https://rubygems.org"

gem "fastlane"
```

Obs.: Adicionar ambos arquivos ./Gemfile e o ./Gemfile.lock no controle de versão (Git).

4 - Para instalar o **Fastlane**:
```cmd
gem install fastlane
```

5 - A instalação do passo acima pode solicitar a instalação do **MSYS2**, pode ser baixado no libk *https://www.msys2.org/*, ler a documentação do link para instalar. Após a instalação pode ser necessário refazer o comando acima em modo administrador.

6 - Para executar uma lane específica use:
```cmd
bundle exec fastlane [nome-da-lane]
```
.
.
.
.
